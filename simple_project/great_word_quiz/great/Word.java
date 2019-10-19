package great;

import java.util.Scanner;

import quiz.Questionable;

public class Word implements Questionable {
	private String word, part;
	private String contentKr, contentEng;

	@Override
	public void read(Scanner scanner) {
		word = scanner.next();
		scanner.nextLine();
		part = scanner.next();
		contentKr = scanner.nextLine();
		contentEng = scanner.nextLine();
	}

	@Override
	public void print() {
		System.out.println(this);
	}

	@Override
	public boolean compare(String kwd) {
		return word.equals(kwd);
	}

	@Override
	public String toString() {
		return String.format("%s\n(%s) %s\n%s\n", word, part, contentKr, contentEng);
	}

	@Override
	public String question(int num) {
		String q = "";
		
		if (num == 1) {
			q = contentEng;
			String blank = "";
			for (int i = 0; i < word.length(); i++)
				blank += "_";
			q = q.replace(word.substring(1), blank);
		}
		
		if (num == 2)
			q = String.format("(%s) %s", part, contentKr);

		return q;
	}

	@Override
	public String answer() {
		return word;
	}
}
