package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public class AdminEditorImplementation implements AdminEditorDAOInterface{
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream inputStream;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public AdminEditorImplementation() {
        
    }
    
    
    @Override       //Completed: Removes an editor from the database.
    public String removeEditor(Editor editor) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "DELETE FROM users u WHERE (u.email = ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, editor.getEmail());
            ps.executeUpdate();
            
            message = "Editor removed.";
            
        } catch (SQLException e) {
            
            message = "Error removing editor.";
            Logger.getLogger(AdminEditorImplementation.class.getName()).log(Level.FINE, "Error removing editor.", e);
            
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
    
    @Override       //Completed: Adds an editor to the database.
    public String addEditor(Editor editor) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into users (Name, Surname, UserTypeID, Email, PhoneNumber, Password) values (?, ?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1,editor.getName());
            ps.setString(2, editor.getSurname());
            ps.setInt(3, 3);
            ps.setString(4,editor.getEmail());
            ps.setString(5, editor.getPhoneNumber());
            ps.setString(6, editor.getPassword());
            ps.executeUpdate();
            
            message = "Editor successfully added.";
            
        } catch (SQLException e) {
            
            message = "Error adding editor, the email or phone number is already in use.";
            Logger.getLogger(AdminEditorImplementation.class.getName()).log(Level.FINE, "Error adding editor, the email or phone number is already in use.", e);
            
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
    
    @Override       //Completed: Allows the Admin-Editors to view a list of all Editors.
    public List<Editor> viewEditors() {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Editor> allEditors = new ArrayList<>();
        
        try {
            
            query = "select u.Name, u.Surname, u.Email from users u  where u.UserTypeID = 2";
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                allEditors.add(new Editor(rs.getString(1), rs.getString(2), rs.getString(3)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error viewing all writers.", e);
            
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
        
        return allEditors;
        
    }
    
    
}
