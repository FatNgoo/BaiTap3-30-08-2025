package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import service.CategoryService;
import service.CategoryServiceImpl;
import util.Constant;

@WebServlet("/admin/category/add")
public class CategoryAddController extends HttpServlet {
    private final CategoryService service = new CategoryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/admin/add-category.jsp").forward(req, resp);
    }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       if (!ServletFileUpload.isMultipartContent(req)) {
           resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Form must have enctype=multipart/form-data.");
           return;
       }

       Category cat = new Category();
       DiskFileItemFactory factory = new DiskFileItemFactory();
       ServletFileUpload upload = new ServletFileUpload(factory);
       upload.setHeaderEncoding("UTF-8");

       try {
           List<FileItem> items = upload.parseRequest(req);
           for (FileItem item : items) {
               if (item.isFormField()) {
                   String name = item.getFieldName();
                   if ("name".equals(name)) {
                       cat.setName(item.getString("UTF-8"));
                   }
               } else {
                   if (item.getSize() > 0) {
                       String original = new File(item.getName()).getName();
                       String ext = "";
                       int i = original.lastIndexOf('.');
                       if (i > 0) ext = original.substring(i);
                       String filename = System.currentTimeMillis() + ext;
                       File dir = new File(Constant.UPLOAD_DIR + File.separator + "category");
                       if (!dir.exists()) dir.mkdirs();
                       File file = new File(dir, filename);
                       item.write(file);
                       // store relative path
                       cat.setIcon("category/" + filename);
                   }
               }
           }
           service.insert(cat);
           resp.sendRedirect(req.getContextPath() + "/admin/category/list");
       } catch (Exception e) {
           e.printStackTrace();
           req.setAttribute("error", "Upload lỗi: " + e.getMessage());
           req.getRequestDispatcher("/WEB-INF/views/admin/add-category.jsp").forward(req, resp);
       }
   }
}
