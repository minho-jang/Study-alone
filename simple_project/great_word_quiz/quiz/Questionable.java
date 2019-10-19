package quiz;

import manage.Manageable;

public interface Questionable extends Manageable{
	String question(int i);	// 1 이면 단답식, 2 이면 객관식
	String answer();
}
