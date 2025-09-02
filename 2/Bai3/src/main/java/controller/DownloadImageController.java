package controller;

import java.io.*;

import com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.Constant;
import jakarta.servlet.http.*;
import org.apache.commons.io.IOUtils;

@WebServlet("/image")
public class DownloadImageController extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String fname = req.getParameter("fname");
       if (fname == null || fname.isEmpty()) {
           resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing fname");
           return;
       }
       File file = new File(Constant.UPLOAD_DIR + File.separator + fname);
       if (!file.exists()) {
           resp.sendError(HttpServletResponse.SC_NOT_FOUND);
           return;
       }
       resp.setContentType(getServletContext().getMimeType(file.getName()));
       try (InputStream in = new FileInputStream(file);
            OutputStream out = resp.getOutputStream()) {
           IOUtils.copy(in, out);
       }
   }
}