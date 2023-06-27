package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ReaderImplementation implements ReaderDAOInterface {
    
    
    //TODO @Author.
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream inputStream;
    FunctionsClass functionsClass = new FunctionsClass();
    
    public ReaderImplementation(){
        
    }
    
    
    @Override       //Completed: Allows a user to register to the RIP system.
    public String registerReader(Reader reader) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into users (Name, Surname, UserTypeID, Email, PhoneNumber, Password) values (?, ?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1,reader.getName());
            ps.setString(2, reader.getSurname());
            ps.setInt(3, 1);
            ps.setString(4,reader.getEmail());
            ps.setString(5, reader.getPhoneNumber());
            ps.setString(6, reader.getPassword());
            ps.executeUpdate();
            
            message = "Reader successfully added.";
            
        } catch (SQLException e) {
            
            message = "Registration Unsuccessful.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Registration Unsuccessful.", e);
            
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
    
    @Override       //Completed: Allows a user to follow an author.
    public String followAuthor(Writer writer, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into followedAuthors (UserID, AuthorID) values (?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, writer.getUserID());
            ps.executeUpdate();
            
            message = "Author successfully followed.";
            
        } catch (SQLException e) {
            
            message = "Error following the selected Author.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error following the selected Author.", e);
            
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
    
    @Override       //Completed: Allows a user to see all their favorite books.
    public ArrayList<Story> getAllFavorites(User user) {
        
       conn = DatabaseConnectionManager.getConnection();
       ArrayList<Story> favoriteStories = new ArrayList<>();
       
        try {
            
            query = "select s.Title, s.CoverImage, concat_ws(\" \", u.Name, u.Surname) as AuthorName from stories s, users u, userfavorites f " +
                    "where f.StoryID = s.StoryID and s.AuthorID = u.UserID and f.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                InputStream inputStream = rs.getBinaryStream(2);
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    
                    outputStream.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = outputStream.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                favoriteStories.add(new Story(rs.getString(1), rs.getString(3), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all Favorites.", e);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
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
        
        return favoriteStories;
        
    }
    
    @Override       //Completed: Allows a user to see all their favorite books that they have read.
    public ArrayList<Story> getReadFavorites(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Story> readFavoriteStories = new ArrayList<>();
        
        try {
            
            query = "select s.Title, s.CoverImage, concat_ws(\" \", u.Name, u.Surname) as Name from stories s, users u, userfavorites f, userread r " +
                            "where f.StoryID = s.StoryID and s.AuthorID = u.UserID and s.StoryID = r.StoryID and r.IsRead = 1 and  f.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                InputStream inputStream = rs.getBinaryStream(2);
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    
                    outputStream.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = outputStream.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                readFavoriteStories.add(new Story(rs.getString(1), rs.getString(3), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all read Favorites.", e);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
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
        
        return readFavoriteStories;
        
    }
    
    @Override       //Completed: Allows a user to see all their favorite books that they have not read.
    public ArrayList<Story> getUnreadFavorites(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Story> unreadFavoriteStories = new ArrayList<>();
        
        try {
            
            query = "select s.Title, s.CoverImage, concat_ws(\" \", u.Name, u.Surname) as Name from stories s, users u, userfavorites f, userread r " +
                    "where f.StoryID = s.StoryID and s.AuthorID = u.UserID and s.StoryID = r.StoryID and r.IsRead = 0 and  f.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                InputStream inputStream = rs.getBinaryStream(2);
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    
                    outputStream.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = outputStream.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                unreadFavoriteStories.add(new Story(rs.getString(1), rs.getString(3), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all unread Favorites.", e);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
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
        
        return unreadFavoriteStories;
        
    }
    
    
}
    
