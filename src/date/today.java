package date;

public class today {
	private String year;
	private String month;
	private String date;
	
	public today() {
		this("2020", "09", "25");
	}
	public today(String year, String month, String date) {
		this.year = year;
		this.month = month;
		this.date = date;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	} 
	
}
