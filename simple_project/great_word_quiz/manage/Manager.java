package manage;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Manager<T extends Manageable> {
	public ArrayList<T> mList = new ArrayList<>();
	
	protected Scanner openFile(String fileName) {
		Scanner fileIn = null;
		File f = new File(fileName);
		try {
			fileIn = new Scanner(f);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		return fileIn;
	}

	public void readAll(String fileName, Factory fac) {
		Scanner fileIn = openFile(fileName);
		T obj = null;
		
		fileIn.nextLine();
		while (fileIn.hasNext()) {
			obj = (T) fac.create();
			obj.read(fileIn);
			mList.add(obj);
		}
		
		fileIn.close();
	}
	
	public ArrayList<T> findObjects(String kwd) {
		ArrayList<T> foundObjList = new ArrayList<>();
		
		for (T obj : mList) {
			if (obj.compare(kwd)) 
				foundObjList.add(obj);
		}
		return foundObjList;
	}
	
	public void printAll() {
		for (T obj : mList)
			obj.print();
	}
}
