package service;

import java.util.List;

import dao.CategoryDAO;
import dao.CategoryDAOImpl;
import model.Category;

public class CategoryServiceImpl implements CategoryService {

    private final CategoryDAO dao = new CategoryDAOImpl();

    @Override
    public void insert(Category category) {
        // Business rule: avoid duplicate name
        if (dao.get(category.getName()) == null) {
            dao.insert(category);
        } else {
            throw new RuntimeException("Category already exists: " + category.getName());
        }
    }

    @Override
    public void edit(Category category) {
        dao.edit(category);
    }

    @Override
    public void delete(int id) {
        dao.delete(id);
    }

    @Override
    public Category get(int id) {
        return dao.get(id);
    }

    @Override
    public Category get(String name) {
        return dao.get(name);
    }

    @Override
    public List<Category> getAll() {
        return dao.getAll();
    }

    @Override
    public List<Category> search(String keyword) {
        return dao.search(keyword);
    }
}
