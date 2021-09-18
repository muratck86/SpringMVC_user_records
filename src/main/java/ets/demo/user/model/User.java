package ets.demo.user.model;

public class User {
	private Integer id;
	private String name;
	private String bloodGroup;
	private String telephone;
	private String address;
	
	public User() {
		super();
	}

	public User(Integer userId, String name, String bloodGroup, String telephone, String address) {
		
		this(name, bloodGroup, telephone, address);
		this.id = userId;
	}
	
	public User(String name, String bloodGroup, String telephone, String address) {
		this.name = name;
		this.bloodGroup = bloodGroup;
		this.telephone = telephone;
		this.address = address;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", bloodGroup=" + bloodGroup + ", telephone=" + telephone
				+ ", address=" + address + "]";
	}
	
	

}
