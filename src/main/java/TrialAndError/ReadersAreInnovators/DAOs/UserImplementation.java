package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public class UserImplementation implements UserDAOInterface {
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public UserImplementation() {
        
    }
    
    
    @Override       //Completed: Allows users to search for stories or authors. //TODO: In Service Layer make it get all searches using this then have a genres, writers, and stories arraylist returned. 
    public ArrayList<String> search(String topic) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<String> search = new ArrayList<>();
        
        try {

            query = "SELECT Title FROM readers_are_innovators.stories where title regexp ?";

            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            rs = ps.executeQuery();

            while(rs.next()){
                
                String title = rs.getString(1);
                search.add(title);

            }
        
            query = "SELECT distinct Title FROM stories s, users u where u.UserID = s.AuthorID and u.Name regexp ? or u.surname regexp ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            ps.setString(2, topic);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                String title = rs.getString(1);
                search.add(title);
                
            }
            
            query = "SELECT Name, Surname from readers_are_innovators.users where name regexp ? or surname regexp ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            ps.setString(2, topic);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                String name = rs.getString(1);
                String surname = rs.getString(2);
                String fullName = name + " " + surname;
                
                search.add(fullName);
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting Search Results.", e);
            
        } finally {
            
            if (rs!=null){
                
                try {
                    
                    rs.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (ps!=null){
                
                try {
                    
                    ps.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (conn!=null){
                
                try {
                    
                    conn.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
        }
        
        return search;
        
    }
    
    @Override       //Completed: Allows a user to log into their account.
    public User login(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        User loggedInUser = null;
        
        try {
            
            query = "select * from users u, userTypes t where u.userTypeID = t.userTypeID and u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getEmail());
            rs = ps.executeQuery();
            
            rs.next();
            
            loggedInUser = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(6),
                    rs.getString(7), rs.getString(8), rs.getInt(4), rs.getString(12),
                    functionsClass.integerToBoolean(rs.getInt(5)), functionsClass.integerToBoolean(rs.getInt(9)), rs.getInt(10));
            
            query = "update users u set u.TimesLoggedIn = ? where u.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, (loggedInUser.getTimesLoggedIn() + 1));
            ps.setInt(2, loggedInUser.getUserID());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error logging into user account.", e);
            
        } finally {
            
            if (rs!=null){
                
                try {
                    
                    rs.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (ps!=null){
                
                try {
                    
                    ps.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (conn!=null){
                
                try {
                    
                    conn.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
        }
        
        return loggedInUser;
        
    }
    
    @Override       //Completed: Allows a user to edit their personal details.
    public String editPersonalInfo(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update users u set u.Name = ?, u.Surname = ?, u.Email = ?, u.PhoneNumber = ?, u.Password = ? where u.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getName() );
            ps.setString(2, user.getSurname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhoneNumber());
            ps.setString(5, user.getPassword());
            ps.setInt(6, user.getUserID());
            ps.executeUpdate();
            
            message = "Information updated.";
            
        } catch (SQLException e) {
            
            message = "Error editing personal information.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error editing personal information.", e);
            
        } finally {
            
            if (rs!=null){
                
                try {
                    
                    rs.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (ps!=null){
                
                try {
                    
                    ps.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (conn!=null){
                
                try {
                    
                    conn.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
        }
        
        return message;
        
    }
    
    @Override       //Completed: Gets all users personal information to allow them to update it.
    public User getUser(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        User myUser = null;
        
        try {
            
            query = "select Name, Surname, Email, PhoneNumber, Password, UserTypeID from users where UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                myUser = new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getInt(6));
                
            }
            
        } catch (SQLException e) {
            
            message = "Error getting users information.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting users information.", e);
            
        } finally {
            
            if (rs!=null){
                
                try {
                    
                    rs.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (ps!=null){
                
                try {
                    
                    ps.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (conn!=null){
                
                try {
                    
                    conn.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
        }
        
        return myUser;
        
    }
    
    @Override       //Completed: Allows a user to verify their email.
    public String emailVerification(String email) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update users u set u.EmailVerified = 1 where u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.executeUpdate();
            
            message = "Email successfully verified.";
            
        } catch (SQLException e) {
            
            message = "Error verifying email.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error verifying email.", e);
            
        } finally {
            
            if (rs!=null){
                
                try {
                    
                    rs.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (ps!=null){
                
                try {
                    
                    ps.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (conn!=null){
                
                try {
                    
                    conn.close();
                    
                } catch (SQLException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
        }
        
        return message;
        
    }
    
    @Override       //TODO
    public String referFriend(Integer phoneNumber) {
        return null;
    }
    
}
