package org.scoula.jdbc_ex.test;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.scoula.jdbc_ex.common.JDBCUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class ConnectionTest {
    @Test
    @DisplayName("db 접속")
    public void testConnection() throws ClassNotFoundException {
        String url = "jdbc:mysql://localhost:3306/jdbc_ex";
        String id = "scoula";
        String password = "1234";

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conn = DriverManager.getConnection(url, id, password)) {
            System.out.println("연결성공!");

            assertNotNull(conn);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    public void testConnection2() {
        Connection conn = JDBCUtil.getConnection();

        Assertions.assertNotNull(conn);
        JDBCUtil.close();
    }
}
