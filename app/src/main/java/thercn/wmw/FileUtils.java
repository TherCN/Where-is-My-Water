package thercn.wmw;

import java.io.File;
import java.io.IOException;

public class FileUtils {
	public static boolean createFile(String filePath, boolean isDir) throws IOException
	{
		File file = new File(filePath);
		if (!isDir) {
			return file.mkdirs();
		}
		return file.createNewFile();
	}
	public static boolean deleteFile(String filePath){
		File file = new File(filePath);
		return file.delete();
	}
	public static int moveFile(String sourcePath, String targetPath) throws IOException, InterruptedException
	{
		Process move = Runtime.getRuntime().exec("mv " + sourcePath + " " + targetPath);
		return move.waitFor();
	}
	public static int copyFile(String sourcePath, String targetPath) throws IOException, InterruptedException
	{
		Process move = Runtime.getRuntime().exec("cp -r " + sourcePath + " " + targetPath);
		return move.waitFor();
	}
	public static void renameFile(String name,String newName) throws IOException, InterruptedException
	{
		moveFile(name,newName);
	}
}
