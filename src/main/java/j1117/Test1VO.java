package j1117;

public class Test1VO {
	private String name;
	private String gender;
	private String job;
	private String address;
	private int age;
	@Override
	public String toString() {
		return "Test1VO [name=" + name + ", gender=" + gender + ", job=" + job + ", address=" + address + ", age=" + age
				+ "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
