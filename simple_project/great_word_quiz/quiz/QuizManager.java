package quiz;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

import manage.Manageable;
import manage.Manager;

public class QuizManager extends Manager<Manageable>{
	ArrayList<Question> qList;
	boolean[] numCorrect;
	Random r = new Random();

	// 단답식
	void runQuiz(Scanner keyin) {
		System.out.println("\n 퀴즈 시작(단답식 5문제)");
		numCorrect = new boolean[5];
		qList = new ArrayList<>();

		for (int i = 0; i < 5; i++) {
			Question q = makeQuiz(1);
			q.showQuestion(i+1);
			System.out.print("     답 : ");
			String ans = keyin.next();
			if (q.checkCorrected(ans))
				numCorrect[i] = true;
			qList.add(q);
		}
		System.out.println();
		showResult();
	}
	
	// 객관식
		void runQuizChoice(Scanner keyin) {
			System.out.println("\n 퀴즈 시작(객관식 5문제)");
			numCorrect = new boolean[5];
			qList = new ArrayList<>();

			for (int i = 0; i < 5; i++) {
				QuizChoice qc = new QuizChoice();
				makeChoices(qc);
				qc.showChoices(i+1);
				System.out.print("     답 : ");
				String ans = keyin.next();
				if (qc.checkCorrected(ans))
					numCorrect[i] = true;
				qList.add(qc.getQuestion());
			}
			System.out.println();
			showResult();
		}

	Question makeQuiz(int num) {
		int randNum = r.nextInt(mList.size());

		return new Question((Questionable) mList.get(randNum), num);
	}

	void showResult() {
		int count = 0;
		for (int i = 0; i < 5; i++) {
			if (numCorrect[i]) {
				System.out.printf("[%d] O\n", i + 1);
				count++;
			} else {
				System.out.printf("[%d] ", i + 1);
				qList.get(i).showAnswer();
			}
		}

		System.out.printf("\n   >>> 5개 중에서 %d개 맞췄습니다.\n", count);
	}
	
	void makeChoices(QuizChoice qc) {
		while(true) {
			String state = qc.addQ(makeQuiz(2));
			if (state.equals("SizeOver"))
				break;
		}
	}

	public void menu(Scanner keyin) {
		while (true) {
			System.out.print("\n(1) 단답식  (2) 객관식 (0) 뒤로  >> ");
			int input = keyin.nextInt();
			switch (input) {
			case 1:
				runQuiz(keyin);
				break;
			case 2:
				runQuizChoice(keyin);
				break;
			case 0:
				return;
			default:
				System.out.println("잘못된 입력입니다.");
				break;
			}
		}
	}
}
