package Products;

public class Products {
    private int id;
    private String productName;
    private int productPrice;
    private String image;

    public Products() {

    }

    public Products(int id, String productName, int productPrice, String image) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Products{" +
                "id=" + id +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", image='" + image + '\'' +
                '}';
    }
}
