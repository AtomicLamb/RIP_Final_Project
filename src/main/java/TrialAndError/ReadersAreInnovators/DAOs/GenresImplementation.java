package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @Desctripion:    The concrete implementation of the GenresDAO.
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
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
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
            
            query = "delete from usergenreintersect i where i.UserID = ? and i.GenreID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, genreID);
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
    public List<Genre> getUserGenres(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Genre> userGenres = new ArrayList<>();
        
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
    
    
    @Override       //Completed: Allows an editor to add a story to a Genre.
    public String addGenreToStory(Story story, Genre genre){
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select s.StoryID from stories s where s.Title = ? and s.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setInt(2, story.getAuthorID());
            rs = ps.executeQuery();
            
            rs.next();
            Integer storyID = rs.getInt(1);
            
            query = "select g.GenreID from genres g where g.Genre = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, genre.getGenre());
            rs = ps.executeQuery();
            
            rs.next();
            Integer genreID = rs.getInt(1);
            
            query = "insert into storygenreintersect (StoryID, GenreID) values (?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, storyID);
            ps.setInt(2, genreID);
            ps.executeUpdate();
            
            message = "Story Successfully added into Genre category.";
            
        } catch (SQLException e) {
            
            message = "Error adding Story into Genre category.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error adding Story into Genre category.", e);
            
            
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
    
    
    @Override       //Completed: Allows an editor to remove a story from a Genre.
    public String removeGenreFromStory(Story story, Genre genre){
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select s.StoryID from stories s where s.Title = ? and s.AuthorID ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setInt(2, story.getAuthorID());
            rs = ps.executeQuery();
            
            rs.next();
            Integer storyID = rs.getInt(1);
            
            query = "select g.GenreID from genres g where g.Genre = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, genre.getGenre());
            rs = ps.executeQuery();
            
            rs.next();
            Integer genreID = rs.getInt(1);
            
            query = "delete from storygenreintersect i where i.StoryID = ? and i.GenreID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, storyID);
            ps.setInt(2, genreID);
            ps.executeUpdate();
            
            message = "Story removed from Genre category.";
            
        } catch (SQLException e) {
            
            message = "Error removing Story from Genre category.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error removing Story from Genre category.", e);
            
            
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
    
    
    @Override       //Completed: Allows a writer to add a story pending story to a Genre.
    public String addGenreToPendingStory(StoryApplication storyApplication, Genre genre){
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select ps.PendingStoryID from pendingstories ps where ps.Title = ? and ps.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, storyApplication.getTitle());
            ps.setInt(2, storyApplication.getAuthorID());
            rs = ps.executeQuery();
            
            rs.next();
            Integer pendingStoryID = rs.getInt(1);
            
            query = "select g.GenreID from genres g where g.Genre = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, genre.getGenre());
            rs = ps.executeQuery();
            
            rs.next();
            Integer genreID = rs.getInt(1);
            
            query = "insert into pendingstorygenreintersect (PendingStoryID, GenreID) values (?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStoryID);
            ps.setInt(2, genreID);
            ps.executeUpdate();
            
            message = "Pending Story Successfully added into Genre category.";
            
        } catch (SQLException e) {
            
            message = "Error adding Pending Story into Genre category.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error adding Pending Story into Genre category.", e);
            
            
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
    
    
    @Override       //Completed: Allows a writer to remove a pending story from a Genre.
    public String removeGenreFromPendingStory(StoryApplication storyApplication, Genre genre){
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select ps.PendingStoryID from pendingStories ps where ps.Title = ? and ps.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, storyApplication.getTitle());
            ps.setInt(2, storyApplication.getAuthorID());
            rs = ps.executeQuery();
            
            rs.next();
            Integer pendingStoryID = rs.getInt(1);
            
            query = "select g.GenreID from genres g where g.Genre = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, genre.getGenre());
            rs = ps.executeQuery();
            
            rs.next();
            Integer genreID = rs.getInt(1);
            
            query = "delete from pendingstorygenreintersect i where i.PendingStoryID = ? and GenreID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStoryID);
            ps.setInt(2, genreID);
            ps.executeUpdate();
            
            message = "Pending Story successfully removed from Genre category.";
            
        } catch (SQLException e) {
            
            message = "Error removing Pending Story from Genre category.";
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error removing Pending Story from Genre category.", e);
            
            
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
    
    
    @Override       //Completed: Allows a user to see with genres the story belongs to.
    public List<Genre> getStoryGenres(Story story){
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Genre> storyGenres = new ArrayList<>();
        
        try {
            
            query = "SELECT g.GenreID, g.Genre FROM genres g, storygenreintersect i where g.GenreID = i.GenreID and i.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                storyGenres.add(new Genre(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error getting story genres.", e);
            
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
        
        return storyGenres;
        
    }
    
    
    @Override       //Completed: Allows an editor to see with genres the pending story belongs to.
    public List<Genre> getPendingStoryGenres(StoryApplication storyApplication){
        
        conn = DatabaseConnectionManager.getConnection();
        List<Genre> pendingStoryGenres = new ArrayList<>();
        
        try {
            
            query = "SELECT g.GenreID, g.Genre FROM genres g, pendingstorygenreintersect i where g.GenreID = i.GenreID and i.PendingStoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, storyApplication.getPendingStoryID());
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                pendingStoryGenres.add(new Genre(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(GenresImplementation.class.getName()).log(Level.FINE, "Error getting pending story genres.", e);
            
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
        
        return pendingStoryGenres;
        
    }
    
    
}
