package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RatingImplementation implements RatingDAOInterface{
    
    
    //
    //TODO Logger, ;
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    //Trial and Error Certified.
    //TODO: Logger, Deprecated Method.
    
    
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
            
            System.out.println("Error getting story rating.");
            e.printStackTrace();
            
            //logger....
            
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
            System.out.println("Error rating this story.");
            e.printStackTrace();
            //logger....
            
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
            
            message = "Rating successfully added.";
            
        } catch (SQLException e) {
            
            message = "Error rating this story.";
            System.out.println("Error rating this story.");
            e.printStackTrace();
            //logger....
            
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
            
            message = "Error removing rating.";
            System.out.println("Error removing rating.");
            e.printStackTrace();
            
            //logger....
            
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
    
    @Override       @Deprecated     //Finish
    public String clearRating(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        query = "select * from readers_are_innovators.stories where StoryID = ?";
        
        Integer deleted = 0;
        
        
        try {
            
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            
            if(rs.next() != false) {
                
                
                
            }
        } catch (SQLException e) {
            System.out.println("Error finding story");
            e.printStackTrace();
        }
        
        query = "delete from readers_are_innovators.rating where StoryID = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            deleted = ps.executeUpdate();
            message = deleted + " ratings removed";
        } catch (SQLException e) {
            System.out.println("Error removing ratings from " + story);
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
