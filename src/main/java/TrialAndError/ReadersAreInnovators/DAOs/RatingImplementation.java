package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class RatingImplementation implements RatingDAOInterface{
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public RatingImplementation() {
        
    }
    
    
    @Override       //Completed: Gets the average story rating.
    public Double getStoryRating(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        Double storyRatingAverage = null;
        
        try {
            
            query = "select avg(r.RatingScore) from rating r where r.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            rs.next();
            
            storyRatingAverage = rs.getDouble(1);
            
        } catch (SQLException e) {
            
            Logger.getLogger(RatingImplementation.class.getName()).log(Level.FINE, "Error getting the story's rating.", e);
            
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
        
        return storyRatingAverage;
        
    }
    
    
    @Override       //Completed: Allows a user to rate a Story.
    public String rateStory(Rating rating) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into rating (UserID, StoryID, RatingScore) values (?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, rating.getUserID());
            ps.setInt(2, rating.getStoryID());
            ps.setInt(3, rating.getRating());
            ps.executeUpdate();
            
            message = "Rating successfully added.";
            
        } catch (SQLException e) {
            
            message = "Error rating this story.";
            Logger.getLogger(RatingImplementation.class.getName()).log(Level.FINE, "Error rating the story.", e);
            
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
    
    
    @Override       //Completed: Allows a user to change their rating for a Story.
    public String changeRating(Rating rating) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update rating r set r.RatingScore = ? where r.UserID = ? and r.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, rating.getRating());
            ps.setInt(2, rating.getUserID());
            ps.setInt(3, rating.getStoryID());
            ps.executeUpdate();
            
            message = "Rating successfully changed.";
            
        } catch (SQLException e) {
            
            message = "Error changing the story's rating.";
            Logger.getLogger(RatingImplementation.class.getName()).log(Level.FINE, "Error changing the story's rating.", e);
            
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
    
    
    @Override       //Completed: Allows a user to remove their rating for a Story.
    public String removeRating(Rating rating) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from rating r where r.UserID = ? and r.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, rating.getUserID());
            ps.setInt(2, rating.getStoryID());
            ps.executeUpdate();
            
            message = "Rating successfully removed.";
            
        } catch (SQLException e) {
            
            message = "Error removing your rating.";
            Logger.getLogger(RatingImplementation.class.getName()).log(Level.FINE, "Error removing your rating.", e);
            
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
    
    
    @Override       //Completed: Checks if a user has already rated a story.
    public Boolean checkRatingExists(Rating rating) {
        
        Boolean exists = null;
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select * from rating r where r.UserID = ? and r.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, rating.getUserID());
            ps.setInt(2, rating.getStoryID());
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                exists = true;
                
            } else {
                
                exists = false;
                
            }
            
        } catch (SQLException e) {
            
            message = "Error getting existing rating.";
            Logger.getLogger(RatingImplementation.class.getName()).log(Level.FINE, "Error getting existing rating.", e);
            
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
        
        return exists;
        
    }
    
    
}
