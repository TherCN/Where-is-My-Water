package com.disney.WMW;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.disney.common.BaseActivity;
import com.disney.common.Constants;
import com.disney.common.Constants.shareTarget;
import com.disney.common.WMWView;
import com.disney.config.GlobalPurchaseHandler;
import java.io.File;
import java.util.Locale;
import java.util.UUID;
import org.fmod.FMODAudioDevice;
import thercn.wmw.MainActivity;
import android.content.pm.PackageManager.NameNotFoundException;

public class WMWActivity extends BaseActivity {
    private static GlobalPurchaseHandler globalIapHandler;
    private static boolean isScreenCaptureReady = false;
    private static final int kAmazonSKUID = 2;
    private static final int kDefaultSKUID = 0;
    private static final int kGoogleSKUID = 1;
    private static String mLocale;
    private static String mMessage;
    private static String mTitle;
    public static boolean register;
    private static Handler shareHandler = null;
    private String _activityPackageName;
    private FMODAudioDevice _audioDevice;
    private Handler _handler;
    private Thread _uiThread;
    private boolean gamePaused;
    private boolean hasFocus;
    private String installationId;
    private boolean isRunning;
    private Context mContext;
    private int mSKU = 0;
    int noOfTry;
    public Intent pendingIntent;
    public boolean resumeOnFocus;
    private Runnable runInitIap;

    static {
        System.loadLibrary("fmodex");
    }

    public WMWActivity() {
        this.isRunning = false;
        this.hasFocus = false;
        this.gamePaused = true;
        this._handler = new MessageHandler();
        this._uiThread = Thread.currentThread();
        this._audioDevice = new FMODAudioDevice();
        this.runInitIap = new Runnable(){
            public void run() {
                WMWActivity.access$100(WMWActivity.this);
            }};
        this.resumeOnFocus = false;
        this.pendingIntent = null;
        this.mContext = this;
        this._activityPackageName = "thercn.wmw";
    }

	class MessageHandler extends Handler {
		private MessageHandler() {}

		public void handleMessage(Message paramMessage) {
			if (paramMessage.obj != null && paramMessage.obj instanceof WMWActivity.FinishActivityArgs)
				WMWActivity.this.finish(); 
		}
	}

	class FinishActivityArgs {}

	static /* synthetic */ void access$100(WMWActivity wMWActivity) {
        wMWActivity.initIap();
    }

    static /* synthetic */ WMWView access$200(WMWActivity wMWActivity) {
        return wMWActivity._view;
    }

    private GlobalPurchaseHandler getGlobalIapHandler() {
        if (globalIapHandler == null && this.hasInternetConnection()) {
            this.initIap();
        }

        return globalIapHandler;
    }


    private Handler getShareHandler() {
        if (shareHandler == null) {
			shareHandler = new Handler(){
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int n = message.what;
                    if (n != 1) {
                        if (n == 3) {
                            didScreenCaptureToSave();
                        }
                    } else {
                        didScreenCaptured(false);
                    }
                }
            };
        }
        return shareHandler;
    }

    private void hideSystemUI() {
        View view = this.getWindow().getDecorView();
        view.setSystemUiVisibility(3846);
    }

    private void initIap() {
        globalIapHandler = new GlobalPurchaseHandler(this, this._handler);
    }

    private void onStartBody() {

    }

    private boolean wasScreenCaptured() {
        String s = Environment.getExternalStorageDirectory().getPath();
        File file1 = new File(s, "screenshot.jpg");
        return file1.exists();
    }

    public void captureScreen() {
        try {
            String s = Environment.getExternalStorageDirectory().getPath();
            File file1 = new File(s, "screenshot.jpg");
            if (file1.exists()) {
                file1.delete();
            }
        } catch (Exception exception) {
        }

        Log.i("CAPTURE", "did capture");
        this._view.getRenderer().screenCaptured();
    }

    public void didScreenCaptureToSave() {
        if (shareHandler != null) {
            if (!this.wasScreenCaptured()) {
                Message message1 = new Message();
                message1.what = 3;
                Message message = new Message();
                message.what = 2;
                shareHandler.sendMessageDelayed(message, 3000L);
                shareHandler.sendMessageDelayed(message1, 2000L);
                int i = this.noOfTry + 1;
                this.noOfTry = i;
                if (i > 5) {
                    shareHandler.removeCallbacksAndMessages(null);
                    shareHandler.removeMessages(3);
                    this.notifyScreenCaptureResult(false);
                }
            } else if (isScreenCaptureReady) {
                this.saveScreenshotToCameraRoll();
            } else {
                isScreenCaptureReady = true;
            }
        }
    }

    public void didScreenCaptured(boolean var1) {
        if (shareHandler != null) {
            if (!this.wasScreenCaptured()) {
                Message message1 = new Message();
                message1.what = 1;
                Message message = new Message();
                message.what = 2;
                shareHandler.sendMessageDelayed(message, 3000L);
                shareHandler.sendMessageDelayed(message1, 2000L);
                int i = this.noOfTry + 1;
                this.noOfTry = i;
                if (i > 5) {
                    shareHandler.removeCallbacksAndMessages(null);
                    shareHandler.removeMessages(message1.what);
                    this.notifyScreenCaptureResult(false);
                }
            } else if (isScreenCaptureReady) {
                this.sendTweetWithoutScreenCapture(mTitle, mMessage);
                this.notifyScreenCaptureResult(true);
            } else {
                isScreenCaptureReady = true;
            }
        }
    }

    public int dipToPixel(float var1) {
        Log.e("", "getResources().getDisplayMetrics().density: " + this.getResources().getDisplayMetrics().density);
        return Math.round(this.getResources().getDisplayMetrics().density * var1);
    }

    public String getAppBuildInfo() {
        return BUILD_INFO;
    }

    public String getAppInfo() {
        return APP_INFO;
    }

    public String getAppVersion() {
        return APP_VERSION;
    }

    public String getCountryCode() {
        Locale locale = Locale.getDefault();
        return locale.getCountry();
    }

    public int getDisplayHeight() {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.heightPixels;
    }

    public float getDisplayHeightInMM() {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        return (float)displaymetrics.heightPixels / displaymetrics.ydpi * 25.4F;
    }

    public int getDisplayWidth() {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.widthPixels;
    }

    public float getDisplayWidthInMM() {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        return (float)displaymetrics.widthPixels / displaymetrics.xdpi * 25.4F;
    }

    public final String getInstallationId() {
        return this.installationId;
    }

    public String getLanguageCode() {
        Locale locale = Locale.getDefault();
        return locale.getLanguage();
    }

    public String getPackageName() {
        return this._activityPackageName;
    }

    public boolean isConnectedToNetwork() {
        ConnectivityManager connectivitymanager = (ConnectivityManager)this.getSystemService("connectivity");
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        boolean flag;
        if (networkinfo != null && networkinfo.isConnectedOrConnecting()) {
            flag = true;
        } else {
            flag = false;
        }

        return flag;
    }

    public void isTwitterLoggedIn() {
        new Handler(this.getMainLooper()).postDelayed(new Runnable(){
				public void run() {
					notifyTwitterLoggedIn(twitterIsLoggedIn(WMWActivity.this));
				}
			}, 10L);    
	}
    public void logEvent(String var1, String var2) {
    }

    public void logoutTwitter() {
		new Handler(this.getMainLooper()).postDelayed(new Runnable(){
				public void run() {
					logoutConnection(WMWActivity.this, Constants.shareTarget.TWITTER);
				}
			}, 10L);  
	}

    public void notifyDoneGraphicContextRestore() {
        if (this.resumeOnFocus) {
            this.onGameResume();
            this.resumeOnFocus = false;
        }

        super.notifyDoneGraphicContextRestore();
    }

    public void onCreate(Bundle var1) {
        super.onCreate(var1);
        SharedPreferences sharedpreferences = this.getPreferences(0);
        String s = sharedpreferences.getString("installationId", "");
        this.installationId = s;
        if (s.length() == 0) {
            this.installationId = UUID.randomUUID().toString();
            Editor editor = sharedpreferences.edit();
            editor.putString("installationId", this.installationId);
            editor.commit();
        }

        this.requestWindowFeature(1);
        this.getWindow().setFlags(1024, 1024);
        this.setDataFromManifest();
        if (SAMSUNG_DRM_ENABLED) {
            Log.d("WMWActivity", "Samsung DRM build. Checking license");
            this.getGlobalIapHandler().requestIAPAvailability();
        } else {
            Log.d("WMWActivity", "Not a Samsung DRM build. Calling switchToGameView()");
            this.switchToGameView();
        }

        this.getGlobalIapHandler();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mSKU == 1) {
            if (globalIapHandler != null) {
                this.getGlobalIapHandler().close();
            }

            globalIapHandler = null;
        }
    }

    protected void onPause() {
        this.resumeOnFocus = false;
        super.onPause();
        this.isRunning = false;
        if (this._view != null) {
            this._view.onPause();
            FMODAudioDevice fmodaudiodevice = this._audioDevice;
            if (fmodaudiodevice != null) {
                fmodaudiodevice.stop();
                Log.d("WMWJava", "Audio stopped!");
            }

            this.gamePaused = true;
            this.onGamePause();
        }

        if (this.mSKU != 1) {
            if (globalIapHandler != null) {
                this.getGlobalIapHandler().close();
            }

            globalIapHandler = null;
        }

        Handler handler = shareHandler;
        if (handler != null) {
            if (handler.hasMessages(1)) {
                shareHandler.removeMessages(1);
                this.notifyScreenCaptureResult(false);
            }

            if (shareHandler.hasMessages(3)) {
                shareHandler.removeMessages(3);
                this.notifyScreenCaptureResult(false);
            }

            if (shareHandler.hasMessages(2)) {
                shareHandler.removeMessages(2);
            }

            shareHandler.removeCallbacksAndMessages(null);
        }

        isScreenCaptureReady = false;
        shareHandler = null;
    }

    protected void onResume() {
        super.onResume();
		if (new File(getObbPath()).exists())
		{
			notifyAddObbFilePathToFileManager(getObbPath());
		}
        this.isRunning = true;
        if (this._view != null) {
            this.resumeOnFocus = false;
            this._view.onResume();
            if (this.hasFocus || this.hasWindowFocus() && this.isRunning) {
                this.hasFocus = true;
                if (this.gamePaused) {
                    this.onGameResume();
                    this.gamePaused = false;
                    this._audioDevice.start();
                    Log.d("WMWJava", "Audio started!");
                }
            } else {
                this.resumeOnFocus = true;
            }
        }

        this._handler.removeCallbacks(this.runInitIap);
        if (this.mSKU != 1) {
            this._handler.postDelayed(this.runInitIap, 10000L);
        }

        shareHandler = this.getShareHandler();
        Message message = new Message();
        message.what = 2;
        shareHandler.sendMessageDelayed(message, 5000L);
    }
	
	public String getObbPath() {
		PackageManager packageManager = getPackageManager();
		PackageInfo packageInfo = null;
		try {
			packageInfo = packageManager.getPackageInfo(getPackageName(), 0);
		} catch (PackageManager.NameNotFoundException e) {}
		
		String pn = getPackageName();
		if (Environment.getExternalStorageState().equals("mounted")) { 
			File file = Environment.getExternalStorageDirectory();
			file = new File(file.toString() + "/Android/obb/" + pn); 
			if (packageInfo.versionCode > 0) { 
				String str = file + File.separator + "main." + packageInfo.versionCode + "." + pn + ".obb";
				Log.e("WMW", "obbFilePath: " + str);
				return str;
			} 
		}  
		return null;
	}

    protected void onStart() {
        super.onStart();
        this.onStartBody();
    }

    protected void onStop() {
        super.onStop();
        if (this._view != null) {
            this._audioDevice.stop();
        }
    }

    public void onWindowFocusChanged(boolean var1) {
        this.hasFocus = var1;
        Log.e("WMW", "focus change: " + var1);
        if (var1) {
            this.hideSystemUI();
        }

        if (this._view != null) {
            if (var1 && this.isRunning && this.gamePaused) {
                this.gamePaused = false;
                Log.e("WMW", "focus regained");
                this.onRegainedFocus();
                if (this.resumeOnFocus) {
                    this.onGameResume();
                    this.resumeOnFocus = false;
                }

                this._audioDevice.start();
                Log.d("WMWJava", "Audio started!");
            }

            if (!var1 && this.isRunning) {
                this.resumeOnFocus = false;
                if (!this.gamePaused) {
                    this.gamePaused = true;
                    this.onLostFocus();
                }
            }
        }
    }

    public void openURL(String var1) {
        Log.i("WMWJava", "Launching url: " + var1);

        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            Intent intent1 = intent.setData(Uri.parse(var1));
            this.startActivity(intent1);
        } catch (Exception exception) {
            Log.w("WMW", "failed to launch url");
            this.notifyLaunchExternalUrlFailed();
        }
    }

    public float pixelToDip(int var1) {
        float f = var1;
        return f / this.getResources().getDisplayMetrics().density;
    }

    public void rateApp() {
        this.openURL(RATE_LINK);
    }

    public void requestIAPAvailability() {
    }

    public void requestIAPProductInfo(String var1, String var2) {
        this.getGlobalIapHandler().requestIAPProductInfo(var1, var2);
    }

    public boolean requestJellyCar3Check() {
        return false;
    }

    public void requestOpenPerryUpsellLink() {
    }

    public void requestPurchase(String var1) {
        this.getGlobalIapHandler().requestPurchase(var1);
    }

    public void requestRestorePurchases() {
        if (this.getGlobalIapHandler() != null) {
            this.getGlobalIapHandler().requestPurchaseUpdate();
        }
    }

    public void saveScreenshot() {
        this.noOfTry = 0;
        Handler handler = shareHandler;
        if (handler != null && !handler.hasMessages(1) && !shareHandler.hasMessages(2) && !shareHandler.hasMessages(3)) {
            isScreenCaptureReady = true;
            this.captureScreen();
            this.didScreenCaptureToSave();
        }
    }

    public void sendTweet(String var1, String var2, String var3) {
        this.noOfTry = 0;
        Handler handler = shareHandler;
        if (handler != null && !handler.hasMessages(1) && !shareHandler.hasMessages(2) && !shareHandler.hasMessages(3)) {
            mTitle = var2;
            mMessage = var1;
            mLocale = var3;
            isScreenCaptureReady = true;
            this.captureScreen();
            this.didScreenCaptured(false);
        }
    }

    public void sendTweetWithoutScreenCapture(String var1, String var2) {
        this.share(this.mContext, shareTarget.TWITTER, mTitle, mMessage, true, mLocale);
    }

    public void setDataFromManifest() {
        try {
            PackageManager packagemanager = this.getPackageManager();
            Log.d("WMWJava", "Test!");
            ApplicationInfo applicationinfo = packagemanager.getApplicationInfo(this.getComponentName().getPackageName(), 128);
            Bundle bundle = applicationinfo.metaData;
            UPSELL_LINK = bundle.getString("UpsellLink");
            StringBuilder stringbuilder = new StringBuilder();
            UPSELL_LINK = stringbuilder.append(UPSELL_LINK).append("&hl=%s").toString();
            RATE_LINK = bundle.getString("RateLink");
            stringbuilder = new StringBuilder();
            APP_INFO = stringbuilder.append("Android ")
				.append(bundle.getString("SKUType"))
				.append(" - ")
				.append(bundle.getString("SKUMarket").toUpperCase())
				.toString();
            PackageInfo packageinfo = packagemanager.getPackageInfo(this._activityPackageName, 0);
            APP_VERSION = packageinfo.versionName;
            BUILD_INFO = bundle.getString("BundleInfo");
            SAMSUNG_DRM_ENABLED = bundle.getBoolean("SamsungDRMEnabled");
            StringBuilder stringbuilder1 = new StringBuilder();
            Log.d("WMWActivity", stringbuilder1.append("SAMSUNG_DRM_ENABLED=").append(SAMSUNG_DRM_ENABLED).toString());
        } catch (Exception exception) {
            Log.wtf("WMWJava", "Package manager get FAILED!");
        }
    }

    public void setDisplayPercent(final float var1) {
        this.runOnUiThread(new Runnable(){

				public void run() {
					WMWActivity.access$200(WMWActivity.this).setSizeAsPercentOfOriginal(var1);
				}
			});
    }

    public void startActivity(Intent var1) {
        if (var1.getType() == "android.intent.action.VIEW") {
            this.pendingIntent = var1;
        } else {
            super.startActivity(var1);
        }
    }

    public void switchToGameView() {
		LayoutParams layoutparams = new LayoutParams(-1, -1);
		this._view = new WMWView(this, this._activityPackageName);
		if (MainActivity.isIPadScreen) {
			layoutparams = new LayoutParams(getDisplayWidth(), getDisplayWidth() / 3 * 4);
		}
        this._view.setLayoutParams(layoutparams);
        RelativeLayout relativelayout = new RelativeLayout(this);
        relativelayout.addView(this._view);
        this.setContentView(relativelayout, new LayoutParams(-1, -1));
        byte b0;
        if (APP_INFO.toLowerCase().contains("google")) {
            b0 = 1;
        } else if (APP_INFO.toLowerCase().contains("amazon")) {
            b0 = 2;
        } else {
            b0 = 0;
        }

        this.mSKU = b0;
    }
}
