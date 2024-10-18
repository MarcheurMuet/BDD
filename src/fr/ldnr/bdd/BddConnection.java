package fr.ldnr.bdd;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.util.Properties;

public class BddConnection {

	public static void main(String args[]) throws IOException {
	      Properties prop = readPropertiesFile("files/config.properties");
	      System.out.println("db.driver.class: "+ prop.getProperty("db.driver.class"));
	      System.out.println("db.url: "+ prop.getProperty("db.url"));
	      System.out.println("db.login: "+ prop.getProperty("db.login"));
	      System.out.println("db.password: "+ prop.getProperty("db.password"));
	   }
	   public static Properties readPropertiesFile(String fileName) throws IOException {
	      FileInputStream fis = null;
	      Properties prop = null;
	      try {
	         fis = new FileInputStream(fileName);
	         prop = new Properties();
	         prop.load(fis);
	      } catch(FileNotFoundException fnfe) {
	         fnfe.printStackTrace();
	      } catch(IOException ioe) {
	         ioe.printStackTrace();
	      } finally {
	         fis.close();
	      }
	      return prop;
	   }
	public static Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}

}
