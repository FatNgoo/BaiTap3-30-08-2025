package dao;

import java.util.List;

import model.Category;

public interface CategoryDAO {
	void insert(Category c);
	void edit(Category c);
	void delete(int id);
	Category get(int id);
	Category get(String name);
	List<Category> getAll();
	List<Category> search(String keyword);
}
