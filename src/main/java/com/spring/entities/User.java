package com.spring.entities;

import java.util.Collection;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.spring.entities.Role;

import com.spring.entities.User;

@Entity
@Table(name="user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	private String email;
	
	@NotEmpty @Size(max=10)
	private String phone_number;
	
	@NotEmpty
	private String address;
	
	@NotEmpty
	private String username;
	
	@NotEmpty
	private String password;
	
	 @ManyToMany
	    @JoinTable( name="user_role",
	                joinColumns = @JoinColumn(name = "user_id"),
	                inverseJoinColumns = @JoinColumn(name = "role_id"))
	    private Collection<Role> roles;
	 
	public User(String username, String password) {
		this.username=username;
		this.password=password;
		
	}
	public User(String name, String email, String phone_number, String address, String username, String password,Collection<Role> roles) {
		this.name = name;
		this.email=email;
		this.phone_number=phone_number;
		this.address=address;
		this.username=username;
		this.password=password;
		this.roles=roles;
		
	}
	
	public User() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	 public Collection<Role> getRoles() {
			return roles;
		}
	public void setRoles(Collection<Role> roles) {
			this.roles = roles;
		}

	@Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return username.equals(user.username) &&
                password.equals(user.password);
    }

   
	@Override
    public int hashCode() {
        return Objects.hash(username, password);
    }
	
}
