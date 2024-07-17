package penerimaanmaba;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JFrame; 

public class Sql extends JFrame{
    private Connection conn;
    private void connectToDatabase() {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/nama_database_anda";
        String user = "username_mysql_anda";
        String password = "password_mysql_anda";
        conn = DriverManager.getConnection(url, user, password);
        System.out.println("Berhasil terhubung ke database");
    } catch (ClassNotFoundException e) {
        System.out.println("Driver MySQL tidak ditemukan: " + e.getMessage());
        JOptionPane.showMessageDialog(null, "Driver MySQL tidak ditemukan. Pastikan MySQL Connector/J telah diinstal.");
        System.exit(1);
    } catch (SQLException e) {
        System.out.println("Gagal terhubung ke database: " + e.getMessage());
        JOptionPane.showMessageDialog(null, "Gagal terhubung ke database. Periksa kredensial dan status server MySQL Anda.");
        System.exit(1);
    }
}
}

