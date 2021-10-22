package com.crud.userdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.crud.user.User;

public class UserDao {
	public static int save(User u) {
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay?characterEncoding=utf8","root","lakshmi");  
			PreparedStatement ps=con.prepareStatement("INSERT INTO register(name,password,email,sex,country) VALUES(?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry()); 
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
		return status;
	}
	public static int checkLogin(User u) {
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay?characterEncoding=utf8","root","lakshmi");  
			PreparedStatement ps=con.prepareStatement("SELECT * FROM register WHERE email=? AND password=?");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				status=1;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static ArrayList<String> view(String email) {
		ArrayList<String>list=new ArrayList<String>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay?characterEncoding=utf8","root","lakshmi");  
			PreparedStatement ps=con.prepareStatement("SELECT * FROM register WHERE email=?");
			ps.setString(1, email);
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				list.add(String.valueOf(rs.getInt("id")));
				list.add(rs.getString("name"));
				list.add(rs.getString("email"));
				list.add(rs.getString("sex"));
				list.add(rs.getString("country"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static int delete(String email) {
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay?characterEncoding=utf8","root","lakshmi");  
			PreparedStatement ps=con.prepareStatement(" DELETE FROM register WHERE email=?");
			ps.setString(1, email);
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
