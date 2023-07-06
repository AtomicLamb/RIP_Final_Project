package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @Desctripion:    The concrete implementation of the StoryDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class StoryImplementation implements StoryDAOInterface {
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public StoryImplementation() {
        
    }
    
    
    @Override       //Completed: Allows an Editor to remove a Story.
    public String removeStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from stories s where s.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story successfully removed.";
            
        } catch (SQLException e){
            
            message = "Error removing Story";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error removing story.", e);
            
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
    
    
    @Override       //Completed: Allows a Writer to make their published story private.
    public String privatizeStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update stories s set s.IsPrivate = ? where s.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, 1);
            ps.setInt(2, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story successfully privatized.";
            
        } catch (SQLException e) {
            
            message = "Error privatizing story";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error privatizing story.", e);
            
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
    
    
    @Override       //Completed: Allows a Writer to make their published story public.
    public String publiciseStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update stories s set s.IsPrivate = ? where s.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, 0);
            ps.setInt(2, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story successfully publicised.";
            
        } catch (SQLException e) {
            
            message = "Error publicising story.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error publicising story.", e);
            
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
    
    
    @Override       //Completed: Allows a user to submit a story for editing and approval.
    public String submitStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into PendingStories (Title, AuthorID, StoryBody, Synopsis, CoverImage, CommentsEnabled) values (?, ?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setInt(2, story.getAuthorID());
            ps.setString(3, story.getStoryBody());
            ps.setString(4, story.getSynopsis());
            
            String filePath = functionsClass.decodeBase64(story.getCoverImage());
            
            ps.setString(5, filePath);
            ps.setInt(6, functionsClass.booleanToInteger(story.getCommentsEnabled()));
            ps.executeUpdate();
            
            message = "Story added.";
            
        } catch (SQLException e) {
            
            message = "Error adding story. Please wait for an approval message before resubmitting the story for approval.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error adding story.", e);
            
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
    
    
    @Override       //Completed: Allows the user to read the story adding it to their list of read stories and increasing the view count of the story by one.
    public String readStory(Story story, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select * from readandfavorites f where f.UserID = ? and f.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                query = "UPDATE readandfavorites f SET f.IsRead = 1 WHERE UserID = ? and StoryID = ?";
                ps = conn.prepareStatement(query);
                ps.setInt(1, user.getUserID());
                ps.setInt(2, story.getStoryID());
                ps.executeUpdate();
                
            } else {
                
                query = "INSERT INTO readandfavorites (UserID, StoryID, IsRead, IsFavorite) VALUES (?, ?, 1, 0)";
                ps = conn.prepareStatement(query);
                ps.setInt(1, user.getUserID());
                ps.setInt(2, story.getStoryID());
                ps.executeUpdate();
                
            }
            
            query = "update stories s SET s.Views = s.Views + 1 where s.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story has been read.";
            
        } catch (SQLException e) {
            
            message = "Error reading the story.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error reading the story.", e);
            
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
    
    
    @Override       //Completed: Allows a Writer to see all their published stories.
    public List<Story> getPublishedStories(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> publishedStories = new ArrayList<>();
        
        try {
            
            query = "select s.StoryID, s.Title, s.CoverImage from stories s where s.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                String imagePath = rs.getString(3);
                
                input = new FileInputStream(new File(imagePath));
                output = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = input.read(buffer)) != -1) {
                    
                    output.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = output.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                publishedStories.add(new Story(rs.getInt(1), rs.getString(2), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error getting a list of published Stories.", e);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
        } finally {
            
            if (input!=null){
                
                try {
                    
                    input.close();
                    
                } catch (IOException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (output!=null){
                
                try {
                    
                    output.close();
                    
                } catch (IOException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
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
        
        return publishedStories;
        
    }
    
    
    @Override       //Completed: Allows a User to view the Story details page.
    public Story displayStoryDetails(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        Story storyToView = null;
        
        try {
            
            query = "select s.*, concat_ws(\" \", u.Name, u.Surname) from stories s, users u where s.AuthorID = u.UserID and s.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            
            rs = ps.executeQuery();
            rs.next();
            
            input = new FileInputStream(new File(rs.getString(8)));
            
            String coverImage = functionsClass.encodeBase64(input);
            
            storyToView = new Story(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(13) , rs.getInt(4), 
                    rs.getInt(5) ,rs.getString(6), rs.getString(7), coverImage, functionsClass.integerToBoolean(rs.getInt(9)), 
                    functionsClass.integerToBoolean(rs.getInt(10)), functionsClass.dateToString(rs.getDate(11)), rs.getInt(12));
            
        } catch (SQLException e) {
            
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error displaying story details.", e);
            
        } catch (FileNotFoundException e) {
            
            throw new RuntimeException(e);
            
        } finally {
            
            if (input!=null){
                
                try {
                    
                    input.close();
                    
                } catch (IOException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
            if (output!=null){
                
                try {
                    
                    output.close();
                    
                } catch (IOException e) {
                    
                    throw new RuntimeException(e);
                    
                }
                
            }
            
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
        
        return storyToView;
        
    }
    
    
    @Override       //Completed: Allows a Writer to save their draft.
    public String saveAsDraft(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into drafts (Title, AuthorID, StoryBody, Synopsis, CoverImage, CommentsEnabled) values (?, ?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setInt(2, story.getAuthorID());
            ps.setString(3, story.getStoryBody());
            ps.setString(4, story.getSynopsis());
            ps.setString(5, functionsClass.decodeBase64(story.getCoverImage()));
            ps.setInt(6, functionsClass.booleanToInteger(story.getCommentsEnabled()));
            
            ps.executeUpdate();
            
            message = "Draft successfully saved.";
            
        } catch (SQLException e) {
            
            message = "Error saving Draft.";
            
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error saving draft.", e);
        
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
    
    
    @Override       //Allows a writer to update their drafts.
    public String updateDraft(Story story){
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "UPDATE drafts d SET Title = ?, StoryBody = ?, Synopsis = ?, CoverImage = ?, CommentsEnabled = ? where DraftID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setString(2, story.getStoryBody());
            ps.setString(3, story.getSynopsis());
            ps.setString(4, functionsClass.decodeBase64(story.getCoverImage()));
            ps.setInt(5, functionsClass.booleanToInteger(story.getCommentsEnabled()));
            
            ps.setInt(6, story.getStoryID());
            
            ps.executeUpdate();
            
            message = "Draft successfully updated.";
            
        } catch (SQLException e) {
            
            message = "Error updating draft.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error updating draft.", e);
            
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
    
    
    @Override       //Completed: Allows the user to like the story adding it to their list of favorites and increasing the like count of the story by one.
    public String likeStory(Story story, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select * from readandfavorites f where f.UserID = ? and f.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                query = "UPDATE readandfavorites f SET f.IsFavorite = 1 WHERE UserID = ? and StoryID = ?";
                ps = conn.prepareStatement(query);
                ps.setInt(1, user.getUserID());
                ps.setInt(2, story.getStoryID());
                ps.executeUpdate();
                
            } else {
                
                query = "INSERT INTO readandfavorites (UserID, StoryID, IsRead, IsFavorite) VALUES (?, ?, 0, 1)";
                ps = conn.prepareStatement(query);
                ps.setInt(1, user.getUserID());
                ps.setInt(2, story.getStoryID());
                ps.executeUpdate();
                
            }
            
            query = "update stories s SET s.Likes = s.Likes + 1 where s.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story has been liked.";
            
        } catch (SQLException e) {
            
            message = "Error liking the story.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error liking the story.", e);
            
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
    
    
    @Override       //Completed: Allows the user to unlike the story removing it from their list of favorites and decreasing the like count of the story by one.
    public String unlikeStory(Story story, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "select * from readandfavorites f where f.UserID = ? and f.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                query = "UPDATE readandfavorites f SET f.IsFavorite = 0 WHERE UserID = ? and StoryID = ?";
                ps = conn.prepareStatement(query);
                ps.setInt(1, user.getUserID());
                ps.setInt(2, story.getStoryID());
                ps.executeUpdate();
                
            } else {
                
                return "Cannot unlike a story you haven't liked.";
                
            }
            
            query = "update stories s SET s.Likes = s.Likes - 1 where s.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story has been unliked.";
            
        } catch (SQLException e) {
            
            message = "Error unliking the story.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error unliking the story.", e);
            
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
    
    
    @Override       //Completed: Checks if the story is already liked by the user.
    public Boolean checkIfLiked(Story story, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        Boolean exists = null;
        
        try {
            
            query = "select * from readandfavorites f where f.IsFavorite = 1 and f.UserID = ? and f.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                exists = true;
                
            } else {
                
                exists = false;
                
            }
            
        } catch (SQLException e) {
            
            message = "Error getting existing like.";
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error getting existing like.", e);
            
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
