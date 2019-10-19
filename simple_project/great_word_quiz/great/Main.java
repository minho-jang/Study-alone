package great;

import java.util.Scanner;

import manage.Factory;
import manage.Manageable;
import quiz.QuizManager;

public class Main {
	QuizManager grMgr = new QuizManager();
	QuizManager wdMgr = new QuizManager();
	Scanner keyin = new Scanner(System.in);
	
	void doit() {
		grMgr.readAll("great.txt", new Factory() {
			public Manageable create() {
				return new Great();
			}
		});
		grMgr.printAll();
		wdMgr.readAll("word.txt", new Factory() {
			public Manageable create() {
				return new Word();
			}
		});
		wdMgr.printAll();
		
		menu();
	}
	
	void menu() {
		while (true) {
			System.out.println();
			System.out.print("(1) 단어  (2) 위인  (0) 종료  >> ");
			int input = keyin.nextInt();
			switch (input) {
			case 1:
				wdMgr.menu(keyin);
				break;
			case 2:
				grMgr.menu(keyin);
				break;
			case 0:
				return;
			default:
				System.out.println("잘못된 입력입니다.");
				break;
			}
		}
	}

	private static Main M = null;

	private Main() {
	} // private으로 생성자를 만들어야 한다.

	public static Main GetInstance() {
		if (M == null)
			M = new Main();
		return M;
	}
	
	public static void main(String args[]) {
		M = GetInstance();
		M.doit();
	}
}
