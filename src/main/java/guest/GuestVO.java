package guest;

public class GuestVO {
	private int idx; 
	private String name;
	private String homePage;
	private String email;
	private String visitDate;
	private String hostIp;
	private String content;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHomePage() {
		return homePage;
	}
	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getvisitDate() {
		return visitDate;
	}
	public void setvisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	public String getHostIp() {
		return hostIp;
	}
	public void setHostIp(String hostIp) {
		this.hostIp = hostIp;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "geustVO [idx=" + idx + ", name=" + name + ", homePage=" + homePage + ", email=" + email + ", visitDate="
				+ visitDate + ", hostIp=" + hostIp + ", content=" + content + "]";
	}
	
	
}
