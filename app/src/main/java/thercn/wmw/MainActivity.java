package thercn.wmw;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.disney.WMW.WMWActivity;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import android.widget.Toast;

public class MainActivity extends Activity {

	public static String appDataDir = Environment.getExternalStorageDirectory().toString() + "/WMW";
	public static boolean isIPadScreen = false;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
		//申请权限
		Permission.申请(this);
		
		//添加数据目录的File对象
		File obbdir = getObbDir();
		File dataDir = new File(appDataDir);
		File extraDataFile = new File(appDataDir + "/wmw-extra.zip");
		
		//检测是否存在，不存在则创建，存在则用文本显示更新时间
		if (!obbdir.exists() || !dataDir.exists()) {
			obbdir.mkdirs();
			dataDir.mkdirs();
		} else{
			TextView checkObb = findViewById(R.id.checkObb);
			
			//设置时间格式
			long lastModifiedTime = extraDataFile.lastModified();
			Date lastModifiedDate = new Date(lastModifiedTime);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String formattedDate = dateFormat.format(lastModifiedDate);
			
			//显示更新时间
			checkObb.setText(getString(R.string.have_obb) + formattedDate);
		}
		
		//将安装包内的wmw-extra.zip解压并复制到obb目录
		String obbPath = getObbPath(this);
		if (!extraDataFile.exists()) {
			AppUtils.ExportAssets(this, appDataDir, "wmw-extra.zip");
		}
		Process process = null;
		try {
			process = Runtime.getRuntime().exec("cp " + extraDataFile.toString() + " " + obbPath);
			if (process.waitFor() != 0)
			{
				Toast.makeText(this,"OBB replication failed",0).show();
			}
			//记录日志
			Runtime.getRuntime().exec("logcat >" + appDataDir + "/wmw.log");
		} catch (IOException|InterruptedException e) {
			Log.e("WMW","",e);
		}
		
		initLayout();

    }

	@Override
	public void onBackPressed() {
		Log.e("WMW","返回被按下");
		AlertDialog dialog = new AlertDialog.Builder(this)
			.setTitle("")
			.setMessage(getString(R.string.exit_str))
			.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
				@Override
				public void onClick(DialogInterface dia, int which) {
					onDestroy();
					System.exit(0);
				}
			})
			.setNegativeButton(android.R.string.cancel, null)
			.create();
		dialog.show();
	}
	
	public static String getObbPath(Context context) {
		PackageManager packageManager = context.getPackageManager();
		PackageInfo packageInfo = null;
		try {
			packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
		} catch (PackageManager.NameNotFoundException e) {}
		String pn = context.getPackageName();
		if (Environment.getExternalStorageState().equals("mounted")) { 
			File file = new File(context.getObbDir().toString()); 
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
