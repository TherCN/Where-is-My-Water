#include "MyFile.h"


//��������
int MyFile::SaveInFile(ImGuiStyle* style, const char *FileName)
{
    FILE* pFile;
    pFile = fopen(FileName, "wb");
    if (pFile == NULL) {
       // printf_s("�����ļ�ʧ��");
        return 0;
    }
    fwrite(style, sizeof(ImGuiStyle), 1, pFile);

    fclose(pFile);
    return 1;
}
//��ȡ����
int MyFile::ReadFile(ImGuiStyle* style,const char* Filename)
{
    FILE* pFile;

    pFile = fopen(Filename, "rb");
    if (pFile == NULL) {
        //printf_s("�ļ���ʧ��");
        return 0;
    }

    while (fread(style, sizeof(ImGuiStyle), 1, pFile) == 1)
     //printf("%s : %f", book.title, book.value);
    fclose(pFile);
    return 1;
}
