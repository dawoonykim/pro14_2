package sec02.ex01;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberBean {

	private String id;
	private String pwd;
	private String name;
	private String email;
	private Date joinDate;

	public MemberBean() {
		System.out.println("MemberBean 생성자 호출");
	}

	public MemberBean(String id, String pwd, String name, String email) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
	}
}
