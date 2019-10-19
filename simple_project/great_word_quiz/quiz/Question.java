package quiz;

public class Question{
	String question;
	String answer;
	
	Question(Questionable type, int num) {
		question = type.question(num);
		answer = type.answer();
	}

	void showQuestion(int num) {
		System.out.println();
		System.out.printf("[Q%d] %s\n", num, question);
	}
	
	boolean checkCorrected(String ans) {
		if (ans.equals(answer)) {
			System.out.println("정답입니다.");
			return true;
		}
		System.out.println("오답입니다. 정답은 " + answer + "입니다.");
		return false;
	}
	
	void showAnswer() {
		System.out.printf("[Q] %s\n => 정답은 %s\n", question, answer);
	}
	
	@Override
	public boolean equals(Object other) {
		if(other == this)
			return true;
		if(!(other instanceof Question))
			return false;
		if(answer.equals(((Question)other).answer))
			return true;
		return false;
	}
}
