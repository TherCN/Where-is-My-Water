package thercn.wmw;

import android.app.Activity;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class AppUtils {
    public static void ExportAssets(Activity activity, String outPath,
									String fileName) {
		File outdir = new File(outPath);
		if (!outdir.exists()) {
			outdir.mkdirs();
		}
		try {
			InputStream inputStream = activity.getAssets().open(fileName);
			File outFile = new File(outdir, fileName);
			if (outFile.exists()) {
				return;
			}
			FileOutputStream fileOutputStream = new FileOutputStream(outFile);
			byte[] buffer = new byte[1024];
			int byteRead;
			while (-1 != (byteRead = inputStream.read(buffer))) {
				fileOutputStream.write(buffer, 0, byteRead);
			}
			inputStream.close();
			fileOutputStream.flush();
			fileOutputStream.close();
		} catch (IOException e) {
			Log.e("WMW", "", e);
		}
	}


}
