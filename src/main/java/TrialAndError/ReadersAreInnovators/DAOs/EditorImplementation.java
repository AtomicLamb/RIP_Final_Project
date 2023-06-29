package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.Administration.Email;
import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import javax.sql.rowset.serial.SerialBlob;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * Completed:       True
 */

public class EditorImplementation implements EditorDAOInterface{
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public EditorImplementation(){
        
    }
    
    
    @Override       //Completed: Allows an Editor to see all Writer Applications.
    public List<WriterApplication> viewWriterApplications() {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<WriterApplication> pendingWriters = new ArrayList<>();
       
        try {
            
            query = "select * from pendingwriters pw order by pw.ApplicationDate asc";
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                        
                pendingWriters.add(new WriterApplication(rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), functionsClass.dateToString(rs.getDate(8))));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error retrieving pending writers.", e);
            
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
        
        return pendingWriters;
        
    }
    
    @Override       //Completed: Allows an Editor to approve a Pending Writer.
    public String approveWriter(WriterApplication writer) {
        
        conn = DatabaseConnectionManager.getConnection();
       
        try {
            
            query = "delete from pendingwriters pw where pw.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1,writer.getEmail());
            ps.executeUpdate();
            
            query = "UPDATE users u SET u.UserTypeID = ? WHERE u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1,2);
            ps.setString(2,writer.getEmail());
            ps.executeUpdate();
            
            
            message = "Writer application successfully approved.";
            
        } catch (SQLException e) {
            
            message = "Error approving writer application.";
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error approving writer application.", e);
            
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
    
    @Override       //Completed: Allows an Editor to deny a Pending Writer.
    public String denyWriter(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try{
            
            query = "delete FROM pendingWriters pw WHERE pw.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, writer.getEmail());
            ps.executeUpdate();
            
            message = "Writer application successfully denied.";
            
        }catch(SQLException e){
            
            message = "Error denying writer application.";
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error denying writer application.", e);
            
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
    
    @Override       //Completed: Allows a User to view a list of all Writers.
    public List<Writer> viewWriters() {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Writer> allWriters = new ArrayList<>();
        
        try {
            
            query = "select u.Name, u.Surname, u.Email from users u  where u.UserTypeID = 2";
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                allWriters.add(new Writer(rs.getString(1), rs.getString(2), rs.getString(3)));
                
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
        
        return allWriters;
        
    }
    
    @Override       //Completed: Allows an editor to approve a pending story application.
    public String approvePendingStory(StoryApplication pendingStory, Editor editor) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into stories (Title, AuthorID, StoryBody, Synopsis, CoverImage, CommentsEnabled, EditedByID) values (?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, pendingStory.getTitle());
            ps.setInt(2, pendingStory.getAuthorID());
            ps.setString(3, pendingStory.getStoryBody());
            ps.setString(4, pendingStory.getSynopsis());
            ps.setString(5, pendingStory.getImagePath());
            ps.setInt(6, functionsClass.booleanToInteger(pendingStory.getCommentsEnabled()));
            ps.setInt(7, editor.getUserID());
            ps.executeUpdate();
            
            message = "Pending Story approved.";
            
        } catch (SQLException e) {
            
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error approving pending Story.", e);
            
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
    
    @Override       //Completed: Allows an editor to deny a pending Story.
    public String removePendingStory(StoryApplication pendingStory) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from pendingstories ps where ps.PendingStoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStory.getPendingStoryID());
            ps.executeUpdate();
            
            message = "Story Successfully Denied.";
            
        } catch (SQLException e) {
            
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error denying the pending Story.", e);
            
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
    
    @Override       //Completed: Allows an editor to review and edit a pending story.
    public StoryApplication reviewPendingStory(StoryApplication pendingStory) {
        
        conn = DatabaseConnectionManager.getConnection();
        StoryApplication storyApplication = null;
        
        try {
            
            query = "select ps.*, u.Email, u.PhoneNumber from PendingStories ps, Users u where ps.AuthorID = u.UserID and ps.PendingStoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStory.getPendingStoryID());
            rs = ps.executeQuery();
            
            rs.next();
            
            String imagePath = rs.getString(6);
            
            InputStream input = new FileInputStream(new File(imagePath));
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
            
            while ((bytesRead = input.read(buffer)) != -1) {
                
                output.write(buffer, 0, bytesRead);
                
            }
            
            byte[] imageBytes = output.toByteArray();
            String image = Base64.getEncoder().encodeToString(imageBytes);
            
            storyApplication = new StoryApplication(rs.getInt(1), rs.getString(2), rs.getInt(3), 
                    rs.getString(4), rs.getString(5), "Story Body", "Synopsis" , image, imagePath, 
                    functionsClass.integerToBoolean(rs.getInt(7)), functionsClass.dateToString(rs.getDate(8)));
            
            
        } catch (SQLException e) {
            
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error reviewing the pending Story.", e);
            
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
        
        return storyApplication;
        
    }
    
    @Override       //Completed: Allows an editor to view all pending Stories.
    public ArrayList<StoryApplication> viewPendingStories() {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<StoryApplication> storyApplications = new ArrayList<>();
        
        try {
            
            query = "select * from PendingStories ps order by ps.DateSubmitted";
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                String imagePath = rs.getString(6);
                
                InputStream input = new FileInputStream(new File(imagePath));
                ByteArrayOutputStream output = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = input.read(buffer)) != -1) {
                    
                    output.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = output.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                storyApplications.add(new StoryApplication(rs.getInt(1), rs.getString(2), rs.getInt(3), 
                        rs.getString(9), rs.getString(10), rs.getString(4), rs.getString(5), image, 
                        imagePath, functionsClass.integerToBoolean(rs.getInt(7)), functionsClass.dateToString(rs.getDate(8))));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error viewing all pending Stories.", e);
            
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
        
        return storyApplications;
        
    }
    
    @Override       //Completed: Allows an editor to revoke a Writer's writing privilege.
    public String revokeWriterPrivileges(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try{
            
            query = "update users u set u.UserTypeID = 1 where u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, writer.getEmail());
            ps.executeUpdate();
            
            message = "Writer privileges successfully revoked.";
            
        }catch(SQLException e){
            
            message = "Error revoking writer privileges.";
            Logger.getLogger(EditorImplementation.class.getName()).log(Level.FINE, "Error revoking writer privileges.", e);
            
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
