package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @Desctripion:    The concrete implementation of the UserDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class UserImplementation implements UserDAOInterface {
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public UserImplementation() {
        
    }
    
    
    @Override       //Completed: Allows users to search for stories by Title.
    public List<Story> searchByTitle(String topic) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> searchResults = new ArrayList<>();
        
        try {

            query = "SELECT s.StoryID, s.Title, s.CoverImage, s.AuthorID FROM stories s where s.Title regexp ?";

            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            rs = ps.executeQuery();

            while(rs.next()){
                
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
                
                searchResults.add(new Story(rs.getInt(1), rs.getString(2),  rs.getInt(4), image));

            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting Search Results.", e);
            
        } catch (FileNotFoundException e) {
            
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
        
        return searchResults;
        
    }
    
    
    @Override       //Completed: Allows users to search for stories by Author.
    public List<Story> searchByAuthor(String topic) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> searchResults = new ArrayList<>();
        
        try {
            
            query = "SELECT distinct s.StoryID, s.Title, s.CoverImage, s.AuthorID FROM stories s, users u where u.UserID = s.AuthorID and u.Name regexp ? or u.Surname regexp ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            ps.setString(2, topic);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
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
                
                searchResults.add(new Story(rs.getInt(1), rs.getString(2),  rs.getInt(4), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting Search Results.", e);
            
        } catch (FileNotFoundException e) {
            
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
        
        return searchResults;
        
    }
    
    
    @Override       //Completed: Allows users to search for stories by Genres.
    public List<Story> searchByGenre(String topic) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> searchResults = new ArrayList<>();
        
        try {
            
            query = "SELECT distinct s.StoryID, s.Title, s.CoverImage, s.AuthorID FROM stories s, storygenreintersect i, genres g where " +
                    "i.StoryID = s.StoryID and i.GenreID = g.GenreID and g.Genre regexp ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
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
                
                searchResults.add(new Story(rs.getInt(1), rs.getString(2),  rs.getInt(4), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting Search Results.", e);
            
        } catch (FileNotFoundException e) {
            
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
        
        return searchResults;
        
    }
    
    
    @Override       //Completed: Allows users to search for Writers by Name.
    public List<Writer> searchByName(String topic) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Writer> searchResults = new ArrayList<>();
        
        try {
            
            query = "SELECT u.UserID, u.Name, u.Surname from users u where u.Name regexp ? or u.Surname regexp ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            ps.setString(2, topic);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                searchResults.add(new Writer(rs.getInt(1), rs.getString(2), rs.getString(3)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting Search Results.", e);
            
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
        
        return searchResults;
        
    }
    
    
    @Override       //Completed: Allows users to search for stories by Title.
    public List<Writer> searchByStories(String topic){
        
        conn = DatabaseConnectionManager.getConnection();
        List<Writer> searchResults = new ArrayList<>();
        
        try {
            
            query = "SELECT u.UserID, u.Name, u.Surname from users u, stories s where u.UserID = s.AuthorID and s.Title regexp ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, topic);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                searchResults.add(new Writer(rs.getInt(1), rs.getString(2), rs.getString(3)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting Search Results.", e);
            
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
        
        return searchResults;
        
    }
    
    
    @Override       //Completed: Allows a user to log into their account.
    public User login(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        User loggedInUser = null;
        
        try {
            
            query = "select * from users u, userTypes t where u.userTypeID = t.userTypeID and u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getEmail());
            rs = ps.executeQuery();
            
            rs.next();
            
            loggedInUser = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(6),
                    rs.getString(7), rs.getString(8), rs.getInt(4), rs.getString(12),
                    functionsClass.integerToBoolean(rs.getInt(5)), functionsClass.integerToBoolean(rs.getInt(9)), rs.getInt(10));
            
            query = "update users u set u.TimesLoggedIn = ? where u.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, (loggedInUser.getTimesLoggedIn() + 1));
            ps.setInt(2, loggedInUser.getUserID());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error logging into user account.", e);
            
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
        
        return loggedInUser;
        
    }
    
    
    @Override       //Completed: Allows a user to edit their personal details.
    public String editPersonalInfo(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update users u set u.Name = ?, u.Surname = ?, u.Email = ?, u.PhoneNumber = ?, u.Password = ? where u.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getName() );
            ps.setString(2, user.getSurname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhoneNumber());
            ps.setString(5, user.getPassword());
            ps.setInt(6, user.getUserID());
            ps.executeUpdate();
            
            message = "Information updated.";
            
        } catch (SQLException e) {
            
            message = "Error editing personal information.";
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error editing personal information.", e);
            
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
    
    
    @Override       //Completed: Gets all users personal information to allow them to update it.
    public User getUser(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        User myUser = null;
        
        try {
            
            query = "select Name, Surname, Email, PhoneNumber, Password, UserTypeID from users where UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                myUser = new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getInt(6));
                
            }
            
        } catch (SQLException e) {
            
            message = "Error getting users information.";
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting users information.", e);
            
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
        
        return myUser;
        
    }
    
    
    @Override       //Completed: Allows a user to verify their email.
    public String emailVerification(String email) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update users u set u.EmailVerified = 1 where u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.executeUpdate();
            
            message = "Email successfully verified.";
            
        } catch (SQLException e) {
            
            message = "Error verifying email.";
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error verifying email.", e);
            
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
    
    
    @Override       //Completed: Checks if the friend being referred is already on the system.
    public Boolean referFriend(String email) {
        
        conn = DatabaseConnectionManager.getConnection();
        Boolean exists = null;
        
        try {
            
            query = "select u.Name from users u where u.Email = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                exists = true;
                
            } else{
                
                exists = false;
                
            }
            
        } catch (SQLException e) {
            
            message = "Error checking if user exists.";
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error checking if user exists.", e);
            
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
    
    
    @Override       //Completed: Sets the book of the day to a random popular story from the previous week.
    public Story getBookOfTheDay() {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> weeksTopPicks = new ArrayList<>();
        Story bookOfDay = null;
        
        try {
            
            LocalDate endDate = LocalDate.now();
            LocalDate startDate = endDate.minusDays(7);
            
            String date1 = String.valueOf(startDate);
            String date2 = String.valueOf(endDate);
            
            query = "select s.*, concat_ws(\" \", u.Name, u.Surname) from stories s, users u where u.UserID = s.AuthorID and " +
                    "s.DatePublished between ? and ? order by s.Likes desc limit 10";
            
            ps = conn.prepareStatement(query);
            ps.setDate(1, functionsClass.stringToDate(date1));
            ps.setDate(2, functionsClass.stringToDate(date2));
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                input = new FileInputStream(new File(rs.getString(8)));
                
                String coverImage = functionsClass.encodeBase64(input);
                
                Story stories = new Story(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(13) , rs.getInt(4),
                        rs.getInt(5) ,rs.getString(6), rs.getString(7), coverImage, functionsClass.integerToBoolean(rs.getInt(9)),
                        functionsClass.integerToBoolean(rs.getInt(10)), functionsClass.dateToString(rs.getDate(11)), rs.getInt(12));
                
                weeksTopPicks.add(stories);
                
                bookOfDay = weeksTopPicks.get((int) Math.random()*weeksTopPicks.size());
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error getting all Favorites.", e);
            
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
        
        return bookOfDay;
        
    }
    
    
    @Override       //Allows a user to reset their password if they've forgotten it.
    public String forgotPassword(User user, String OTP) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "update users u set u.Password = ? where u.Email = ? and u.PhoneNumber = ?";
            
            ps = conn.prepareStatement(query);
            ps.setString(1, functionsClass.passwordEncryption(OTP));
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhoneNumber());
            ps.executeUpdate();
            
            message = "Your password has been set to the OTP, please check your Emails for the OTP.";
            
        } catch (SQLException e) {
            
            message = "Error sending the OTP, please try again.";
            Logger.getLogger(UserImplementation.class.getName()).log(Level.FINE, "Error editing personal information.", e);
            
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
