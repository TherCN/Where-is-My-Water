package thercn.wmw;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import com.disney.WMW.WMWActivity;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class MainActivity extends Activity {

	public static String appDataDir = Environment.getExternalStorageDirectory().toString() + "/WMW";
	public static boolean isIPadScreen = false;
	static
	{
		System.loadLibrary("wmw");
	}

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
		Permission.申请(this);
		File obbdir = getObbDir();

		File dataDir = new File(appDataDir);
		File extraDataFile = new File(appDataDir + "/wmw-extra.zip");
		if (!obbdir.exists() || !dataDir.exists()) {
			obbdir.mkdirs();
			dataDir.mkdirs();
		}
		String obbPath = getObbPath();
		if (!extraDataFile.exists()) {
			AppUtils.ExportAssets(this, appDataDir, "wmw-extra.zip");
		}
		try {
			Runtime.getRuntime().exec("cp " + extraDataFile.toString() + " " + obbPath);
			Runtime.getRuntime().exec("logcat >" + appDataDir + "/wmw.log");
		} catch (IOException e) {
			
		} finally {
			Path source = Paths.get(extraDataFile.toString());
			Path target = Paths.get(obbPath);
			try {
				Files.copy(source, target);
			} catch (IOException e) {}
		}
		initLayout();

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
			file = new File(getObbDir().toString() + "/" + pn); 
			if (packageInfo.versionCode > 0) { 
				String str = file + File.separator + "main." + packageInfo.versionCode + "." + pn + ".obb";
				Log.e("WMW", "obbFilePath: " + str);
				return str;
			} 
		}  
		return null;
	}

	private void initLayout() {
		final CheckBox ipadScreen = findViewById(R.id.resetSize);
		Button startGame = findViewById(R.id.startGame);
		ipadScreen.setOnClickListener(new View.OnClickListener() {

				@Override
				public void onClick(View view) {
					if (ipadScreen.isChecked()) {
						isIPadScreen = true;
					}
				}
			});
		startGame.setOnClickListener(new View.OnClickListener() {

				@Override
				public void onClick(View view) {
					Intent intent = new Intent(MainActivity.this, WMWActivity.class);
					startActivity(intent);
				}
			});
	}

}