/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package local.matheus.bookstoreweb.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import local.matheus.bookstoreweb.model.bean.User;
import local.matheus.connection.MySQLConnection;

/**
 *
 * @author devsys-b
 */
public class UserDAO {
    private static final String SQL_INSERT = "INSERT INTO user(email, "
            + "password, fullname) "
            + "VALUES (?, ?, ?)";
    
    private static final String SQL_SELECT_ALL = "SELECT * FROM user";
    private static final String SQL_SELECT_ID = "SELECT * FROM user WHERE id = ?";
    private static final String SQL_SELECT_FULLNAME = "SELECT fullname FROM user "
            + "WHERE email = ? AND password = ?";
    
    private static final String SQL_UPDATE = "UPDATE user SET email = ?, "
            + "password = ?, fullname = ? "
            + "WHERE id = ?";
    
    private static final String SQL_DELETE = "DELETE FROM user WHERE id = ?";
    
    /**
     * Insere um usuário na base de dados User
     * @param u 
     */
    public void create(User u) {
        Connection conn = MySQLConnection.getConnection();
        PreparedStatement stmt = null;
        
        try {
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, u.getEmail());
            stmt.setString(2, u.getPassword());
            stmt.setString(3, u.getFullname());
            
            //Executa a query
            int auxRetorno = stmt.executeUpdate();
            
            Logger.getLogger(UserDAO.class.getName()).log(Level.INFO, null,
                    "Inclusao: " + auxRetorno);
            
        } catch (SQLException sQLException) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, sQLException);
        } finally {
            //Encerra a conexão com o banco de dados e o statement.
            MySQLConnection.closeConnection(conn, stmt);
        }
    }
    
    /**
     * Retorna todos os registros da tabela user.
     * @return 
     */
    public List<User> getResults() {
        Connection conn = MySQLConnection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        User u = null;
        List<User> listaUsers = null;
        
        try {
            //Prepara a string de SELECT e executa a query.
            stmt = conn.prepareStatement(SQL_SELECT_ALL);
            rs = stmt.executeQuery();
            
            //Carrega os dados do ResultSet rs, converte em Produto e
            //adiciona na lista de retorno.
            listaUsers = new ArrayList<>();
            
            while (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setFullname(rs.getString("fullname"));
                listaUsers.add(u);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaUsers;
    }
    
    /**
     * Retorna um usuário da tabela user.
     * @param id IDentificação do User.
     * @return 
     */
    public User getResultById(int id) {
        Connection conn = MySQLConnection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        User u = null;
        
        try {
            stmt = conn.prepareStatement(SQL_SELECT_ID);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setFullname(rs.getString("fullname"));
            }
            
        } catch (SQLException sQLException) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, sQLException);
        } finally {
            //Encerra a conexão com o banco de dados e o statement.
            MySQLConnection.closeConnection(conn, stmt);
        }
        
        return u;
    }
    
    /**
     * Atualiza um registro na tabela user.
     * @param u 
     */
    public void update(User u) {
        Connection conn = MySQLConnection.getConnection();
        PreparedStatement stmt = null;
        
        try {
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, u.getEmail());
            stmt.setString(2, u.getPassword());
            stmt.setString(3, u.getFullname());
            stmt.setInt(4, u.getId());
            
            //Executa a query
            int auxRetorno = stmt.executeUpdate();
            
            Logger.getLogger(UserDAO.class.getName()).log(Level.INFO, "Update: {0}", auxRetorno);
            
        } catch (SQLException sQLException) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, sQLException);
        } finally {
            //Encerra a conexão com o banco de dados e o statement.
            MySQLConnection.closeConnection(conn, stmt);
        }
    }
    
    /**
     * Exclui um usuário com base do ID fornecido.
     * @param id 
     */
    public void delete(int id) {
        Connection conn = MySQLConnection.getConnection();
        PreparedStatement stmt = null;
        
        try {
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, id);
            
            //Executa a query
            int auxRetorno = stmt.executeUpdate();
            
            Logger.getLogger(UserDAO.class.getName()).log(Level.INFO, null,
                    "Delete: " + auxRetorno);
            
        } catch (SQLException sQLException) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, sQLException);
        } finally {
            //Encerra a conexão com o banco de dados e o statement.
            MySQLConnection.closeConnection(conn, stmt);
        }
    } 
    
    public User checkLogin(String email, String password) {
        Connection conn = MySQLConnection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        User u = null;
        
        try {
            stmt = conn.prepareStatement(SQL_SELECT_FULLNAME);
            stmt.setString(1, email);
            stmt.setString(2, password);
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                u = new User();
                u.setFullname(rs.getString("fullname"));
                u.setEmail(email);
            }
            
        } catch (SQLException sQLException) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, sQLException);
        } finally {
            //Encerra a conexão com o banco de dados e o statement.
            MySQLConnection.closeConnection(conn, stmt);
        }
        
        return u;
    }
}
