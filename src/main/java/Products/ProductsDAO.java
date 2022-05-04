package Products;

import ConnectDB.ConnectDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductsDAO {
    private ConnectDB connectDB = new ConnectDB();
    private Statement stmt = null;
    private ResultSet resultSet = null;
    public List<Products> productsList = new ArrayList<>();

    public void fillProducts() throws SQLException {
        stmt = connectDB.connect().createStatement();
        String query = "SELECT * FROM products";
        System.out.println(query);
        resultSet = stmt.executeQuery(query);
        while (resultSet.next()) {
            Products prod = new Products();
            prod.setId(resultSet.getInt(1));
            prod.setProductName(resultSet.getString(2));
            prod.setProductPrice(resultSet.getInt(3));
            prod.setImage(resultSet.getString(4));

            productsList.add(prod);

        }
        connectDB.connect().close();
        stmt.close();
        resultSet.close();

    }

    public List<Products> getAllProducts() {
        return productsList;
    }

/*    public void updateProducts(Products products) throws SQLException{
        int prodID = products.getId();
        String prodName = products.getProductName();
        int prodPrice = products.getProductPrice();
        String prodImage = products.getImage();
        String query = "UPDATE products SET productname = " + "'" + prodName + "'" +", productprice = '" + prodPrice + "', productimage = " +
                prodImage + " WHERE id = " + prodID +";";
        System.out.println(query);
        Statement statement = connectDB.connect().createStatement();
        statement.executeUpdate(query);
        fillProducts();
    }*/


    public void updateProducts(int id, String name, int price, String image) throws SQLException{
        String query = "UPDATE products SET productname = " + "'" + name + "'" +", productprice = '" + price + "', productimage = " +
                image + " WHERE id = " + id +";";
        System.out.println(query);
        Statement statement = connectDB.connect().createStatement();
        statement.executeUpdate(query);
        fillProducts();

    }

    public void deleteProduct(int id) throws SQLException{
        String query = "DELETE FROM products WHERE id = " + id + ";";
        Statement statement = connectDB.connect().createStatement();
        if (statement.executeUpdate(query) == 1) {
            fillProducts();
        }
    }

    public void addProduct(String name, int price) throws SQLException{
        String query = "INSERT INTO products values (" + null + ", '" + name + "'" + ", " + price + ",null)";
        Statement statement1 = connectDB.connect().createStatement();
        if (statement1.executeUpdate(query) == 1) {
            fillProducts();
        }

    }
}
