package Admin;

import ConnectDB.ConnectDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDAO {
    private ConnectDB connectDB = new ConnectDB();
    private Statement stmt = null;
    private ResultSet resultSet = null;
    private List<Admin> adminList = new ArrayList<>();

    public void fillAdmins() throws SQLException {
        stmt = connectDB.connect().createStatement();
        String query = "SELECT * FROM admin ";
        System.out.println(query);
        resultSet = stmt.executeQuery(query);
        while (resultSet.next()) {
            Admin admin = new Admin();
            admin.setAdminID(resultSet.getInt(1));
            admin.setLogin(resultSet.getString(2));
            admin.setPassword(resultSet.getString(3));

            adminList.add(admin);

        }
        connectDB.connect().close();
        stmt.close();
        resultSet.close();

    }

    public List<Admin> getAdminList(){
        return adminList;
    }

    public boolean checkPassLog(Admin admin) throws SQLException{
        stmt = connectDB.connect().createStatement();
        String login = admin.getLogin();
        String password = admin.getPassword();
        System.out.println(login + " " + password + " ");
        String query = "SELECT login,password from admin where login = '"+ login+ "'  and  password ='" + password + "';";
        resultSet = stmt.executeQuery(query);
        System.out.println(query);
        List<Admin> admins = new ArrayList<>();

        while (resultSet.next()){
            Admin adminFillObject = new Admin(resultSet.getString(1),resultSet.getString(2));
            admins.add(adminFillObject);
        }
        if (admins.size() == 0){
            return false;
        }
        return true;



    }


}


