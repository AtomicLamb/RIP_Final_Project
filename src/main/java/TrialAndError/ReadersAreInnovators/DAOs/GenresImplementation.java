package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
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
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class GenresImplementation implements GenresDAOInterface{
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public GenresImplementation() {
        
    }
    
    
    @Override       //Completed: Allows the Admin-Editor to add a new Genre.
    public String addGenre(Genre genre) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into genres (genre) values (?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, genre.getGenre());
            ps.executeUpdate();
            
            message = "Genre added successfully.";
            
        } catch (SQLException e) {
            
            message = "Error adding new genre.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error adding genre.", e);
            
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
    
    @Override       //Completed: Allows the Admin-Editor to remove a Genre.
    public String removeGenre(Genre genre) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from genres g where g.GenreID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, genre.getGenreID());
            ps.executeUpdate();
            
            message = "Genre successfully deleted.";
            
        } catch (SQLException e) {
            
            message = "Error removing genre.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error removing genre.", e);
            
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
    
    @Override       //Completed: Allows a user to select their preferred genres.
    public String selectGenre(User user, Genre genre) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select u.UserID from users u where u.Email = ?";
                    
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getEmail());
            rs = ps.executeQuery();
            
            rs.next();
            Integer userID = rs.getInt(1);
            
            query = "select g.GenreID from genres g where g.Genre = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, genre.getGenre());
            rs = ps.executeQuery();
            
            rs.next();
            Integer genreID = rs.getInt(1);
            
            query = "insert into usergenreintersect (userID, genreID) values (?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, genreID);
            ps.executeUpdate();
            
            message = "Genre/s added to your list of Genres.";
            
        } catch (SQLException e) {
            
            message = "Error adding Genre to list of your Genres.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error adding genre to your list of genres.", e);
            
            
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
    
    @Override       //Completed: Allows a user to deselect a genre.
    public String deselectGenre(User user, Genre genre) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from usergenreintersect i where UserID = ? and GenreID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, genre.getGenreID());
            ps.executeUpdate();
            
            message = "Genre removed from your list of Genres.";
            
        } catch (SQLException e) {
            
            message = "Error removing Genre from your list of Genres.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error removing genre from your list of genres.", e);
            
            
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
    
    @Override       //Completed: Allows a user to see all available Genres.
    public List<Genre> getGenres() {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Genre> allGenres = new ArrayList<>();
        
        try {
            
            query = "select * from Genres g";
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                allGenres.add(new Genre(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error getting all genres.", e);
            
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
        
        return allGenres;
            
    }
    
    @Override       //Completed: Allows a user to see all their selected Genres.
    public ArrayList<Genre> getUserGenres(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Genre> userGenres = new ArrayList<>();
        
        try {
            
            query = "SELECT g.GenreID, g.Genre FROM genres g, usergenreintersect i where g.GenreID = i.GenreID and i.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                userGenres.add(new Genre(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error getting user genres.", e);
            
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
        
        return userGenres;
        
    }
    
    
}
