package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RatingImplementation implements RatingDAOInterface{
    
    
    //Trial and Error Certified.
    //TODO: Logger, Deprecated Method.
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
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
    
    @Override       @Deprecated     //TODO Finish.
    public String clearRating(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select * from readers_are_innovators.stories where StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            
        } catch (SQLException e) {
            
            message = "Error clearing the story's ratings.";
            Logger.getLogger(RatingImplementation.class.getName()).log(Level.FINE, "Error clearing the story's ratings.", e);
        
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
    
    
}
