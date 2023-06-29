package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import javax.sql.rowset.serial.SerialBlob;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public class StoryImplementation implements StoryDAOInterface {
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
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
            
            query = "insert into PendingStories (Title, AuthorID, StoryBody, Synopsis, CoverImage) values (?, ?, ?, ?, ?) ";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setInt(2, story.getAuthorID());
            ps.setString(3, story.getStoryBody());
            ps.setString(4, story.getSynopsis());
            ps.executeUpdate();
            
            message = "Story added.";
            
        } catch (SQLException e) {
            
            message = "Error adding story.";
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
            
            query = "insert into userread (userID, storyID) values (?, ?)";
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
            ps.executeUpdate();
            
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
    public ArrayList<Story> getPublishedStories(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Story> publishedStories = new ArrayList<>();
        
        try {
            
            query = "select s.Title, s.CoverImage from stories s where s.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                String imagePath = rs.getString(2);
                
                input = new FileInputStream(new File(imagePath));
                output = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = input.read(buffer)) != -1) {
                    
                    output.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = output.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                publishedStories.add(new Story(rs.getString(1), image, imagePath));
                
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
    
    @Override       //TODO: Create story from Result Set.
    public Story displayStoryDetails(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        Story storyToView = null;
        
        try {
            
            query = "select * from stories s where s.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            
            rs = ps.executeQuery();
            rs.next();
            
            storyToView = new Story();      //TODO
            
        } catch (SQLException e) {
            
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error displaying story details.", e);
            
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
    
    @Override       //TODO: Create story from Result Set.
    public Story getPendingStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        Story pendingStory = null;
        
        try {
            
            query = "select * from pendingstories ps where ps.PendingStoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            
            rs = ps.executeQuery();
            
            rs.next();
            
            pendingStory = new Story();
            
            
        } catch (SQLException e) {
            
            Logger.getLogger(StoryImplementation.class.getName()).log(Level.FINE, "Error getting pending Story.", e);
            
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
        
        return null;
    }
    
    @Override       //Completed: Allows the user to like the story adding it to their list of favorites and increasing the like count of the story by one.
    public String likeStory(Story story, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into userfavorites (userID, storyID) values (?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
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
            
            query = "delete from userfavorites f where f.UserID = ? and f.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, story.getStoryID());
            ps.executeUpdate();
            
            query = "update stories s SET s.Likes = s.Likes - 1 where s.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story has been unliked.";
            
        } catch (SQLException e) {
            
            message = "Error unliking the story.";
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
    
    
}
