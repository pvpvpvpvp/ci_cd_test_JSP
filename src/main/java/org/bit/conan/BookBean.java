package org.bit.conan;

public class BookBean {
	private String title;
	private String author;
	private String publisher;
	private int price;
	private int bookid;
	
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public BookBean() {
		
	}
	public BookBean(int bookid, String title, String publisher,int price) {
//		setAuthor(author);
		setPublisher(publisher);
		setTitle(title);
		setPrice(price);
		setBookid(bookid);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
}
