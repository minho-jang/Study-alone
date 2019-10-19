package manage;

import java.util.Scanner;

public interface Manageable {
	void read(Scanner s);
	void print();
	boolean compare(String kwd);
}