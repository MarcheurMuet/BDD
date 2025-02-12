package fr.ldnr.bdd;

import java.sql.Connection;
import java.util.ArrayList;

public interface Dao<T> {
	public Connection connection = BddConnection.getConnection();
	public void create(T obj);
	public T read(int id);
	public boolean update(T obj);
	public boolean delete(T obj);
	public ArrayList<T> readAll();
}
