package util;

import java.io.*;
import java.util.List;

public class FileUtil {
	public static void saveImage(String root, String fbname, byte[] data) throws IOException {
		
		root += "/images";
		File f = new File(root);
		if(!f.exists()) f.mkdir();	// images 폴더가 없을 때, 즉 처음에만 생성
		
		
		String[] fbnames = fbname.split(",");
		
		for(String i : fbnames ) {
			f = new File(root + "/" + i);
			FileOutputStream out = new FileOutputStream(f);
			out.write(data);
			out.close();
        
		}
		

	}
}
