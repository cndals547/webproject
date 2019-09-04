package classes;

public class Classes {
	private String code;
	private String class_num;
	private String class_name;
	private String campus;
	private String division;
	private String grade;
	private String credit;
	private String day;
	private String limited;
	private String major;
	private String professor;
	
	public Classes(String code, String class_num, String class_name, String campus, String division, String grade,
			String credit, String day, String limited, String major, String professor) {
		super();
		this.code = code;
		this.class_num = class_num;
		this.class_name = class_name;
		this.campus = campus;
		this.division = division;
		this.grade = grade;
		this.credit = credit;
		this.day = day;
		this.limited = limited;
		this.major = major;
		this.professor = professor;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getClass_num() {
		return class_num;
	}
	public void setClass_num(String class_num) {
		this.class_num = class_num;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getCampus() {
		return campus;
	}
	public void setCampus(String campus) {
		this.campus = campus;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getLimited() {
		return limited;
	}
	public void setLimited(String limited) {
		this.limited = limited;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
}
