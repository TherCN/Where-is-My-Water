//
// Created by admin on 2022/6/10.
//

#include "EGL.h"
#include "../Platinmods/PlatinmodsMemoryPatch.h"

#define PATCH_LIB(lib, offset, hex) patchOffset(lib, string2Offset(offset), hex, true)
EGL::EGL() {
    mEglDisplay = EGL_NO_DISPLAY;
    mEglSurface = EGL_NO_SURFACE;
    mEglConfig  = nullptr;
    mEglContext = EGL_NO_CONTEXT;
}

static bool RunInitImgui;//检测imgui是否初始化过


int EGL::initEgl() {
    //1、
    mEglDisplay = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    if (mEglDisplay == EGL_NO_DISPLAY) {
        LOGE("eglGetDisplay error=%u", glGetError());
        return -1;
    }
    //2、
    EGLint *version = new EGLint[2];
    if (!eglInitialize(mEglDisplay, &version[0], &version[1])) {
        LOGE("eglInitialize error=%u", glGetError());
        return -1;
    }
    //3、
    const EGLint attribs[] = {EGL_BUFFER_SIZE, 32, EGL_RED_SIZE, 8, EGL_GREEN_SIZE, 8,
                              EGL_BLUE_SIZE, 8, EGL_ALPHA_SIZE, 8, EGL_DEPTH_SIZE, 8, EGL_STENCIL_SIZE, 8, EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT, EGL_SURFACE_TYPE, EGL_WINDOW_BIT, EGL_NONE};

    EGLint num_config;
    if (!eglGetConfigs(mEglDisplay, NULL, 1, &num_config)) {
        LOGE("eglGetConfigs  error =%u", glGetError());
        return -1;
    }
    // 4、
    if (!eglChooseConfig(mEglDisplay, attribs, &mEglConfig, 1, &num_config)) {
        LOGE("eglChooseConfig  error=%u", glGetError());
        return -1;
    }
    //5、
    int attrib_list[] = {EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE};
    mEglContext = eglCreateContext(mEglDisplay, mEglConfig, EGL_NO_CONTEXT, attrib_list);
    if (mEglContext == EGL_NO_CONTEXT) {
        LOGE("eglCreateContext  error = %u", glGetError());
        return -1;
    }
    // 6、
    mEglSurface = eglCreateWindowSurface(mEglDisplay, mEglConfig, SurfaceWin, NULL);
    if (mEglSurface == EGL_NO_SURFACE) {
        LOGE("eglCreateWindowSurface  error = %u", glGetError());
        return -1;
    }
    //7、
    if (!eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext)) {
        LOGE("eglMakeCurrent  error = %u", glGetError());
        return -1;
    }
    return 1;
}



int EGL::initImgui() {

    if (RunInitImgui){
        //如果初始化过，就只执行这段
        IMGUI_CHECKVERSION();
        ImGui::CreateContext();
        ImGui_ImplAndroid_Init(this->SurfaceWin);
        ImGui_ImplOpenGL3_Init("#version 300 es");
        return 1;
    }
    RunInitImgui= true;

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();

    LOGE("CreateContext成功");
    io = &ImGui::GetIO();
    io->IniSavingRate = 10.0f;
    string SaveFile = this->SaveDir;
    SaveFile += "/save.ini";
    io->IniFilename = SaveFile.c_str();




    ImGui_ImplAndroid_Init(this->SurfaceWin);
    LOGE(" ImGui_ImplAndroid_Init成功");
    ImGui_ImplOpenGL3_Init("#version 300 es");
    LOGE(" ImGui_ImplOpenGL3_Init成功");
    ImFontConfig font_cfg;
    font_cfg.FontDataOwnedByAtlas = false;
    imFont = io->Fonts->AddFontFromMemoryTTF((void *) OPPOSans_H, OPPOSans_H_size, 32.0f, &font_cfg, io->Fonts->GetGlyphRangesChineseFull());
    io->MouseDoubleClickTime = 0.0001f;
    LOGE(" Font成功");
    //UI窗体风格
    g = ImGui::GetCurrentContext();

        style =&ImGui::GetStyle();
        style->ScaleAllSizes(1.0f);//缩放尺寸
        style->FramePadding=ImVec2(10.0f,20.0f);

   //自动读取主题
    string LoadFile = this->SaveDir;
    LoadFile += "/Style.dat";
    ImGuiStyle s;
    if (MyFile::ReadFile(&s,LoadFile.c_str())==1){
       *style=s;
        LOGE("读取主题成功");
    }


    return 1;
}


void EGL::onSurfaceCreate(JNIEnv *env, jobject surface, int SurfaceWidth, int SurfaceHigh) {
    LOGE("onSurfaceCreate");
    this->SurfaceWin       = ANativeWindow_fromSurface(env, surface);
    this->surfaceWidth     = SurfaceWidth;
    this->surfaceHigh      = SurfaceHigh;
    this->surfaceWidthHalf = this->surfaceWidth / 2;
    this->surfaceHighHalf  = this->surfaceHigh / 2;
    SurfaceThread = new std::thread([this] { EglThread(); });
    SurfaceThread->detach();
    LOGE("onSurfaceCreate_end");
}

void EGL::onSurfaceChange(int SurfaceWidth, int SurfaceHigh) {
    this->surfaceWidth     = SurfaceWidth;
    this->surfaceHigh      = SurfaceHigh;
    this->surfaceWidthHalf = this->surfaceWidth / 2;
    this->surfaceHighHalf  = this->surfaceHigh / 2;
    this->isChage          = true;
    LOGE("onSurfaceChange");
}

void EGL::onSurfaceDestroy() {

    LOGE("onSurfaceDestroy");
    this->isDestroy = true;

    std::unique_lock<std::mutex> ulo(Threadlk);
    cond.wait(ulo, [this] { return !this->ThreadIo; });
    delete SurfaceThread;
    SurfaceThread = nullptr;

}


char offset[18];
char str[24];

void EGL::EglThread() {

    this->initEgl();
    this->initImgui();
    ThreadIo = true;
    input->initImguiIo(io);
    input->setImguiContext(g);
    input->setwin(this->g_window);

    while (true) {



        if (this->isChage) {
            glViewport(0, 0, this->surfaceWidth, this->surfaceHigh);
            this->isChage = false;
        }
        if (this->isDestroy) {
            this->isDestroy = false;
            ThreadIo = false;
            cond.notify_all();
            return;
        }


        this->clearBuffers();

        //如果Activity不处于活动状态就停止绘制
        if (!ActivityState)continue;//感觉没屌用
        imguiMainWinStart();

        //菜单
        ImGui::SetNextWindowBgAlpha(0.7);
        style->WindowTitleAlign = ImVec2(0.5, 0.5);//标题居中
        if (input->Scrollio && !input->Activeio) {
            input->funScroll(g->WheelingWindow ? g->WheelingWindow : g->HoveredWindow);
        }

       ImGui::Begin("Where's My Water？Mod Tool");
        input->g_window = g_window = ImGui::GetCurrentWindow();
        ImGui::SetWindowSize({500, 500}, ImGuiCond_FirstUseEver);
        ImGui::SetWindowPos({0, 200}, ImGuiCond_FirstUseEver);
        ImGui::Text("libwmw.so Mod Tool");
        
        ImGui::InputTextWithHint("##偏移", "请输入偏移(input offset)", offset, IM_ARRAYSIZE(offset),
                                 ImGuiInputTextFlags_CallbackAlways,
                                 ImguiAndroidInput::inputCallback);
        
        ImGui::InputTextWithHint("##字节", "请输入hex(input hex)", str, IM_ARRAYSIZE(str),
                                 ImGuiInputTextFlags_CallbackAlways,
                                 ImguiAndroidInput::inputCallback);
       if (ImGui::Button("修改(modify)")){
	        if (patch(offset,str)) LOGE("成功为%d打上%s",offset,str);
	   }
	   
       ImGui::End();

        imguiMainWinEnd();
        this->swapBuffers();
        input->fps = this->FPS;
    }
}

bool EGL::patch(char offset[],char hex[]) {
pid_t pid = Platinmods::getPid("thercn.wmw");
    
    std::string offset_str(offset);
	std::string hex_str(hex);

    Platinmods::MemoryPatch patch1 = Platinmods::MemoryPatch(pid, "libwmw.so", offset_str, hex_str);
    
    // Write Modified Hex
    bool result = patch1.Modify();
    if (result) {
        LOGE("Offset patches successfully!\n");
    } else {
        LOGE("Patch failed\n");
    }
    return result;
}



int EGL::swapBuffers() {
    //opengl当前buff传递至屏幕
    if (eglSwapBuffers(mEglDisplay, mEglSurface)) {
        return 1;
    }
    LOGE("eglSwapBuffers  error = %u", glGetError());
    return 0;
}
void EGL::clearBuffers() {
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}


void EGL::imguiMainWinStart() {
    // Start the Dear ImGui frame
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplAndroid_NewFrame();
    ImGui::NewFrame();

}

void EGL::imguiMainWinEnd() {
    // Render the Dear ImGui frame
    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}

void EGL::setSaveSettingsdir(string &dir) {
    this->SaveDir = dir;
    LOGE("保存路径=%s", SaveDir.c_str());
}

void EGL::setinput(ImguiAndroidInput *input_) {
    this->input = input_;
}



