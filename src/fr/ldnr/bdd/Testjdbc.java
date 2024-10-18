package fr.ldnr.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Testjdbc {

	public static void main(String[] args) {
		ArrayList<Article> articles = new ArrayList();
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String url = "jdbc:mariadb://localhost:3306/Shop";
		String login = "root";
		String password = "fms2024";
		
		try(Connection connection = DriverManager.getConnection(url,login,password)){
			String strSql = "select * from T_Articles";
			try(Statement statement = connection.createStatement()){
				try(ResultSet resultSet = statement.executeQuery(strSql)){
					while(resultSet.next()) {
						int id = resultSet.getInt(1);
						String description = resultSet.getString(2);
						String brand = resultSet.getString(3);
						double price = resultSet.getDouble(4);
						articles.add(new Article(id, description, brand, price));
					}
				}
			}
		for(Article article : articles)		System.out.println(article);		
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}