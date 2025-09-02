package service;

import dao.ForgotPasswordDAO;

public class ForgotPasswordService {
    private ForgotPasswordDAO forgotPasswordDAO = new ForgotPasswordDAO();

    public boolean resetPassword(String username, String email, String newPassword) {
        return forgotPasswordDAO.updatePasswordIfMatch(username, email, newPassword);
    }
}
