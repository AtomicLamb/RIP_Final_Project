package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CommentImplementation implements CommentDAOInterface{
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    //Trial and Error Certified.
    //TODO: Deprecated Method;
    
    
    public CommentImplementation() {
        
    }
    
    
    @Override       //Completed: Allows a user to comment on a stories details page.
    public String addComment(Comment comment) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "INSERT INTO comments (StoryID, UserID, Comment) VALUES (?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, comment.getStoryID());
            ps.setInt(2, comment.getUserID());
            ps.setString(3, comment.getComment());
            ps.executeUpdate();
            
            message = "Comment successfully added.";
            
        } catch (SQLException e) {
            
            message = "Comment could not be added.";
            Logger.getLogger(CommentImplementation.class.getName()).log(Level.FINE, "Error adding a comment.", e);
            
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
    
    @Override       //Completed: Allows the users to see the comments on a stories details page.
    public ArrayList<Comment> getComments(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Comment> allComments = new ArrayList<>();
        
        try {
            
            query = "select c.CommentID, c.StoryID, c.UserID, c.Comment, concat_ws(\" \", u.Name, u.Surname) " +
                    "as FullName, c.DateAdded from comments c, users u where c.StoryID = ? and c.UserID = u.UserID and IsFlagged = 0";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            
            while(rs.next()) {
                
                allComments.add(new Comment(rs.getInt(2), rs.getInt(3), rs.getString(4), 
                        rs.getString(5), functionsClass.dateToString(rs.getDate(6))));
                
            }
            
        } catch (SQLException e) {
            
            System.out.println("Error getting the stories comments.");
            Logger.getLogger(CommentImplementation.class.getName()).log(Level.FINE, "Error getting the stories comments.", e);
            
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
        
        return allComments;
        
    }
    
    @Override       //Completed: Allows a user to report a comment that violates the terms of service.
    public String reportComment(Comment comment) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update comments c set c.IsFlagged = 1 where c.CommentID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, comment.getCommentID());
            ps.executeUpdate();
            
            message = "Comments successfully reported.";
            
        } catch (SQLException e) {
            
            message = "Error reporting the comment.";
            Logger.getLogger(CommentImplementation.class.getName()).log(Level.FINE, "Error reporting the comment.", e);
            
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
    
    @Override       //Completed: Allows an editor to remove a comment that violates the terms of service.
    public String deleteComment(Comment comment) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from comments c where c.CommentID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, comment.getCommentID());
            ps.executeUpdate();
            
            message = "Comments successfully removed.";
            
        } catch (SQLException e) {
            
            message = "Error removing comments.";
            Logger.getLogger(CommentImplementation.class.getName()).log(Level.FINE, "Error removing a comment.", e);
            
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
    
    @Override       //Completed: Allows an editor to unFlag a reported comment if it doesn't violate terms of service.
    public String unFlagComment(Comment comment) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "update readers_are_innovators.comments set isFlagged = 0 where commentID = ?";
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, comment.getCommentID());
            ps.executeUpdate();
            message = "Comments successfully un-flagged.";
            
        } catch (SQLException e) {
            
            message = "Error un-flagging comments.";
            System.out.println("Error un-flagging comments.");
            e.printStackTrace();
            
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
    
    @Override       //Completed: Allows an editor to view all the reported comments.
    public ArrayList<Comment> viewFlaggedComments() {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Comment> flaggedComments = new ArrayList<>();
        String name = null;
        
        query = "select c.CommentID, c.StoryID, c.UserID, c.Comment, concat_ws(\" \", u.Name, u.Surname) " +
                "as FullName from comments c, users u where c.UserID = u.UserID and IsFlagged = 1;";
        
        try {
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()) {

                flaggedComments.add(new Comment(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(5), rs.getString(4)));
                
            }
            
        } catch (SQLException e) {
            
            System.out.println("Error getting flagged comments.");
            e.printStackTrace();
            
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
        
        return flaggedComments;
        
    }
    
    @Override       //Completed: Allows a user to see how many comments the story has.
    public Integer getNumberOfComments(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select * from readers_are_innovators.comments where StoryID = ?";
        Integer count = 1;
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            
            if(rs.next() == false) {
                return 0;
            } else{
                while(rs.next()){
                    count++;
                }
            }
            
            
        } catch (SQLException e) {
            System.out.println("Error retrieving story comments");
            e.printStackTrace();
            
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
        
        return count;
        
    }
    
    @Override   @Deprecated     //Finish
    public String clearComments(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select * from readers_are_innovators.stories where StoryID = ?";
        
        try {
          
                ps = conn.prepareStatement(query);
                ps.setInt(1, story.getStoryID());
                rs = ps.executeQuery();
            if(rs.next()!= false) {
                //rs.next();
                
            } else{
                System.out.println("Story no = exist :(");
            }
        } catch (SQLException e) {
            System.out.println("Error finding story");
            e.printStackTrace();
        } 
        
        
        query = "delete from readers_are_innovators.comments where StoryID = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            
            int deleted = ps.executeUpdate();
            message = deleted + " comments cleared from " + story;
            
        } catch (SQLException e) {
            System.out.println("Error clearing comments from " + story);
            e.printStackTrace();
            
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
