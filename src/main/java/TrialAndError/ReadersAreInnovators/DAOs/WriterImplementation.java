package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
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

public class WriterImplementation implements WriterDAOInterface{
    
    
    //Trial andError Certified.
    //TODO: Logger, Tests, 
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream inputStream;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public WriterImplementation() {
        
    }
    
    
    @Override       //Completed: Allows a user to select one of their drafts to edit or submit.
    public Story getDraft(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        Story draft = null;
        
        try {
            
            query = "select * from Drafts d where d.DraftID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
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
            
            draft = new Story(rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), 
                    image, functionsClass.integerToBoolean(rs.getInt(7)));
            
        } catch (SQLException e) {
            
            throw new RuntimeException(e);
            
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
        
        return draft;
        
    }
    
    @Override       //Completed: Allows a user to see all their current drafts.
    public ArrayList<Story> getAllDrafts(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        ArrayList<Story> userDrafts = new ArrayList<>();
        
        try {
            
            query = "select * from Drafts d where d.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                InputStream inputStream = rs.getBinaryStream(6);
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    
                    outputStream.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = outputStream.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                userDrafts.add(new Story(rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        image, functionsClass.integerToBoolean(rs.getInt(7))));
                
            }
            
        } catch (SQLException e) {
            
            throw new RuntimeException(e);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
        } finally {
            
            if (inputStream!=null){
                
                try {
                    
                    inputStream.close();
                    
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
        
        return userDrafts;
        
    }
    
    @Override       //Completed: Allows a user to register as a writer.
    public String writerRegistration(WriterApplication writerApplication) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into pendingwriters (Name, Surname, Email, PhoneNumber, password, writersMotivation) values (?, ?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1,writerApplication.getName());
            ps.setString(2, writerApplication.getSurname());
            ps.setString(3,writerApplication.getEmail());
            ps.setString(4, writerApplication.getPhoneNumber());
            ps.setString(5, writerApplication.getPassword());
            ps.setString(6, writerApplication.getMotivation());
            ps.executeUpdate();
            
            message = "Application successfully submitted.";
            
        } catch (SQLException e) {
            
            message = "Error submitting writer application.";
            System.out.println("Error adding reader.");
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
    
    @Override       //Completed: Allows a writer to edit an existing draft.
    public String editDraft(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update drafts d set d.Title = ?, d.StoryBody = ?, d.Synopsis = ?, d.CoverImage = ?, d.CommentsEnabled = ? where d.DraftID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setString(2, story.getStoryBody());
            ps.setString(3, story.getSynopsis());
            
            decoder = Base64.getDecoder().decode(story.getCoverImage());
            Blob blob = new SerialBlob(decoder);
            
            ps.setBlob(4, blob);
            ps.setInt(5, functionsClass.booleanToInteger(story.getCommentsEnabled()));
            ps.setInt(6, story.getStoryID());
            ps.executeUpdate();
            
            message = "Draft successfully edited.";
            
        } catch (SQLException e) {
            
            message = "Error editing draft.";
            System.out.println("Error editing draft.");
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
    
    @Override       //Completed: Gets the information to display on the Author details page.
    public Writer getAuthor(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        Writer author = null;
        
        try {
            
            query = "select u.Name, u.Surname, u.Email from users u where u.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            rs = ps.executeQuery();
            
            rs.next();
            
            author = new Writer(rs.getString(1), rs.getString(2), rs.getString(3));
        
        } catch (SQLException e) {
            
            System.out.println("Error adding reader.");
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
        
        return author;
        
    }
    
    
    
}