package murach.business;

import java.io.Serializable;

public class User implements Serializable {
	public String firstName;
	public String lastName;
	public String email;
	
	public User(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}
	public User() {
		firstName = "";
        lastName = "";
        email = "";
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public String getEmail() {
		return email;
	}
}
