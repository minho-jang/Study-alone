package quiz;

import java.util.ArrayList;

public class QuizChoice {
	// 선택지와 답 번호
	ArrayList<Question> choices = new ArrayList<>();
	int answer = (int)(Math.random() * 4);
	
	void showChoices(int num) {
		choices.get(answer).showQuestion(num);
		for (int i = 0; i < 4; i++) {
			System.out.printf("(%d) %s\n", i+1, choices.get(i).answer);
		}
	}

	String addQ(Question makedQuiz) {
		if (choices.size() > 3)
			return "SizeOver";
		if (choices.indexOf(makedQuiz) > -1)
			return "Duplication";

		choices.add(makedQuiz);
		return "OK";
	}
	
	boolean removeDuple() {	
		// 마지막에 추가된 것과 중복이 있는가? 있으면 제거
		if (choices.indexOf(choices.get(choices.size()-1)) > -1) {
			choices.remove(choices.size()-1);
			return true;
		}
		return false;
	}

	boolean checkCorrected(String ans) {
		int ansToInt = Integer.parseInt(ans);
		if (ansToInt < 0 || ansToInt > 4)
			return false;
		return choices.get(answer).checkCorrected(choices.get(ansToInt - 1).answer);
	}

	Question getQuestion() {
		return choices.get(answer);
	}
}
