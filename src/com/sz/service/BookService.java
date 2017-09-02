package com.sz.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.sz.model.Book;
import com.sz.utils.SqlHelper;

public class BookService {

	public ArrayList getAllBooks() {
		ArrayList<Book> al = new ArrayList();
		
		String sql=("SELECT * FROM book");
		
		ResultSet rs = SqlHelper.executeQuery(sql, null);
		
		try {
			while(rs.next())
			{
				Book book = new Book();
				book.setId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setAuthor(rs.getString(3));
				
				al.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlHelper.close(rs, SqlHelper.getPs(), SqlHelper.getCt());
		}
		
		return al;
	}

	public boolean addBook(Book book) {
		boolean b =true;
		
		String sql = "insert into book (id,bookName,author) values(?,?,?)";
		String []parameters ={null,book.getBookName(),book.getAuthor()};
		try {
			SqlHelper.executeUpdate(sql, parameters);
		} catch (Exception e) {
			// TODO: handle exception
			b=false;
		}
		
		return b;
	}


	public boolean deleteBookById(String id) {
		boolean b=true;
		
		String sql="delete from book where id=?";
		String []  parameters ={id};
		try {
			SqlHelper.executeUpdate(sql, parameters);
		} catch (Exception e) {
			
			b=false;
		}
		
		
		return b;
	}

	public Book getBookById(String id) {
		Book book = new Book();
		String sql = "Select * from book where id=?";
		String [] parameters ={id};
		ResultSet rs= SqlHelper.executeQuery(sql, parameters);
		try {
			if(rs.next())
			{
				book.setId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setAuthor(rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlHelper.close(rs, SqlHelper.getPs(), SqlHelper.getCt());
		}
		
		return book;
	}


	public boolean updateBook(Book book) {
		boolean b=true;
		
		String sql="Update book set bookName=? ,author=? where id =?";
		String [] parameters = {book.getBookName(),book.getAuthor(),book.getId()+""};
		
		try {
			SqlHelper.executeUpdate(sql, parameters);
		} catch (Exception e) {
			// TODO: handle exception
			b=false;
		}
		
		return b;
	}

}
