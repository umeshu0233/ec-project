package ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ec.model.Product;

public class ProductDAO {
    public List<Product> getAllProducts() throws SQLException {
        List<Product> list = new ArrayList<>();
        
        String sql = "SELECT id, name, price, image_path FROM products";
   
        

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImagePath(rs.getString("image_path")); // ← これも追加！
                list.add(p);
            }
        }
        return list;
    }

    public Product getProductById(int id) throws SQLException {
    	String sql = "SELECT id, name, price, image_path FROM products WHERE id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImagePath(rs.getString("image_path")); // ← これも追加！
                
                return p;
            }
            
            
        }
        return null;
    }
    

}