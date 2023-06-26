package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import javax.sql.rowset.serial.SerialBlob;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;


public class EditorImplementation implements EditorDAOInterface{
    
    
    //
    //TODO: Logger;
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream inputStream;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public EditorImplementation(){
        
    }
    
    
    @Override       //Completed: Allows an Editor to see all Writer Applications.
    public ArrayList<WriterApplication> viewWriterApplications() {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<WriterApplication> pendingWriters = new ArrayList<>();
       
        try {
            
            query = "select * from pendingwriters pw order by pw.ApplicationDate asc";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                        
                pendingWriters.add(new WriterApplication(rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), functionsClass.dateToString(rs.getDate(7))));
                
            }
            
        } catch (SQLException e) {
            
            System.out.println("Error retrieving pending writers.");
            e.printStackTrace();
            //Logger....
            
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
            System.out.println(message);
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
    
    @Override       //Completed: Allows an Editor to deny a Pending Writer.
    public String denyWriter(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        
        try{
            
            query = "delete FROM pendingWriters pw WHERE pw.PendingWriterID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            ps.executeUpdate();
            
            message = "Writer application successfully denied.";
            
        }catch(SQLException e){
            
            message = "Error denying writer application.";
            System.out.println(message);
            e.printStackTrace();
            //Logger....
            
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
    public ArrayList<Writer> viewWriters() {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Writer> allWriters = new ArrayList<>();
        
        try {
            
            query = "select * from users where UserTypeID = 2";
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                allWriters.add(new Writer(rs.getString(2), rs.getString(3), rs.getString(6)));
                
            }
            
        } catch (SQLException e) {
            
            System.out.println("Error viewing all writers.");
            e.printStackTrace();
            //Logger....
            
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
            
            query = "delete from pendingstories ps where ps.PendingStoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStory.getPendingStoryID());
            ps.executeUpdate();
            
            query = "insert into stories (Title, AuthorID, StoryBody, Synopsis, CoverImage, CommentsEnabled, EditedByID) values (?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, pendingStory.getTitle());
            ps.setInt(2, pendingStory.getAuthorID());
            ps.setString(3, pendingStory.getStoryBody());
            ps.setString(4, pendingStory.getSynopsis());
            
            decoder = Base64.getDecoder().decode(pendingStory.getCoverImage());
            Blob blob = new SerialBlob(decoder);
            
            ps.setBlob(5, blob);
            ps.setInt(6, functionsClass.booleanToInteger(pendingStory.getCommentsEnabled()));
            ps.setInt(7, editor.getUserID());
            ps.executeUpdate();
            
            message = "Pending Story approved.";
            
        } catch (SQLException e) {
            
            message = "Error approving pending Story.";
            System.out.println("Error approving pending Story.");
            e.printStackTrace();
            //Logger....
            
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
    public String denyPendingStory(StoryApplication pendingStory, Editor editor) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from readers_are_innovators.pendingstories where pendingstoryid = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStory.getPendingStoryID());
            ps.executeUpdate();
            
            message = "Story Successfully Denied.";
            
        } catch (SQLException e) {
            
            message = "Error denying the pending Story.";
            System.out.println("Error denying the pending Story.");
            throw new RuntimeException(e);
            //Logger....
            
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
            
            query = "select * from PendingStories ps where ps.PendingStoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, pendingStory.getPendingStoryID());
            rs = ps.executeQuery();
            
            rs.next();
            
            InputStream inputStream = rs.getBinaryStream(6);
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
            
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                
                outputStream.write(buffer, 0, bytesRead);
                
            }
            
            byte[] imageBytes = outputStream.toByteArray();
            String image = Base64.getEncoder().encodeToString(imageBytes);
            
            storyApplication = new StoryApplication(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4),
                    rs.getString(5), image, functionsClass.integerToBoolean(rs.getInt(7)), functionsClass.dateToString(rs.getDate(8)));
            
            
        } catch (SQLException e) {
            
            System.out.println("Error reviewing the pending Story.");
            throw new RuntimeException(e);
            //Logger....
            
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
                
                InputStream inputStream = rs.getBinaryStream(6);
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                
                byte[] imageBytes = outputStream.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                storyApplications.add(new StoryApplication(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), 
                        rs.getString(5), image, functionsClass.integerToBoolean(rs.getInt(7)), functionsClass.dateToString(rs.getDate(8))));
                
            }
            
            
        } catch (SQLException e) {
            
            System.out.println("Error viewing qll pending Stories.");
            throw new RuntimeException(e);
            //Logger....
            
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
        
        return storyApplications;
        
    }
    
    
}