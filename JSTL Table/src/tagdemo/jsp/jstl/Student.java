package tagdemo.jsp.jstl;

public class Student {
	private String firstName;
	private String lastName;
	private boolean goldStudent;
	
	public Student(String firstName, String lastName, boolean goldStudent) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.goldStudent = goldStudent;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isGoldStudent() {
		return goldStudent;
	}

	public void setGoldStudent(boolean goldStudent) {
		this.goldStudent = goldStudent;
	}

}
