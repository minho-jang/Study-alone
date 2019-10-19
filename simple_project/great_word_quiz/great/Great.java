package great;

import java.util.Scanner;

import quiz.Questionable;

public class Great implements Questionable {
	private String name;
	private String sex;
	private int birth, dead;
	private String content;
	private String history;
	
	@Override
	public void read(Scanner scanner) {
		name = scanner.next();
		sex = scanner.next();
		birth = scanner.nextInt();
		dead = scanner.nextInt();
		content = scanner.nextLine();
		history = scanner.nextLine();
	}
	
	@Override
	public void print() {
		System.out.println(this);
	}
	
	@Override
	public boolean compare(String kwd) {
		if (name.equals(kwd) || content.contains(kwd))
			return true;
		return false;
	}
	
	@Override
	public String toString() {
		return String.format("%s (%d ~ %d)\n%s\n%s\n",
				name, birth, dead, content, history);
	}

	public String getAnswer() {
		return name;
	}

	public String getQuestionText() {
		return String.format("[%s] %s", sex, content);
	}

	@Override
	public String question(int num) {
		return content;
	}

	@Override
	public String answer() {
		return name;
	}
}
