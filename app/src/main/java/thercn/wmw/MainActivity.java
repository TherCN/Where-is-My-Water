package thercn.wmw;
 
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Switch;
import com.disney.WMW.WMWActivity;
import java.io.File;
import java.io.IOException;
import android.widget.CheckBox;

public class MainActivity extends Activity {
     
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
		if (!obbdir.exists()) {
			obbdir.mkdirs();
		}
		try {
			Runtime.getRuntime().exec("logcat >" + "/sdcard/wmw.log");
		} catch (IOException e) {}
		initLayout();
		
    }
	private void initLayout() {
		final CheckBox ipadScreen = findViewById(R.id.resetSize);
		Button startGame = findViewById(R.id.startGame);
		ipadScreen.setOnClickListener(new View.OnClickListener() {

				@Override
				public void onClick(View view) {
					if (ipadScreen.isChecked())
					{
						isIPadScreen = true;
					}
				}
			});
		startGame.setOnClickListener(new View.OnClickListener() {

				@Override
				public void onClick(View view) {
					Intent intent = new Intent(MainActivity.this,WMWActivity.class);
					startActivity(intent);
				}
			});
	}
	
}
