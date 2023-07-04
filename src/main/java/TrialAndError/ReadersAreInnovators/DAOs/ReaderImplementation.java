package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
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
 * @Desctripion:    The concrete implementation of the ReaderDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class ReaderImplementation implements ReaderDAOInterface {
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private InputStream input = null;
    private ByteArrayOutputStream output = null;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public ReaderImplementation(){
        
    }
    
    
    @Override       //Completed: Allows a user to register to the RIP system.
    public String registerReader(Reader reader) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into users (Name, Surname, UserTypeID, Email, PhoneNumber, Password) values (?, ?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setString(1,reader.getName());
            ps.setString(2, reader.getSurname());
            ps.setInt(3, 1);
            ps.setString(4,reader.getEmail());
            ps.setString(5, reader.getPhoneNumber());
            ps.setString(6, reader.getPassword());
            ps.executeUpdate();
            
            message = "Reader successfully added, Please check your emails to verify your account.";
            
        } catch (SQLException e) {
            
            message = "Registration Unsuccessful. The email or phone number you entered already exists. ";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Registration Unsuccessful. ", e);
            
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
    
    
    @Override       //Completed: Allows a user to follow an author.
    public String followAuthor(Writer writer, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into followedAuthors (UserID, AuthorID) values (?, ?)";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, writer.getUserID());
            ps.executeUpdate();
            
            message = "Author successfully followed.";
            
        } catch (SQLException e) {
            
            message = "Error following the selected Author.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error following the selected Author.", e);
            
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
    
    
    @Override       //Completed: Allows a user to unfollow and author.
    public String unfollowAuthor(Writer writer, User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from followedAuthors f where f.UserID = ? and f.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, writer.getUserID());
            ps.executeUpdate();
            
            message = "Author successfully unfollowed.";
            
        } catch (SQLException e) {
            
            message = "Error unfollowing the selected Author.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error unfollowing the selected Author.", e);
            
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
    
    
    @Override       //Completed: Checks if the user is already following the author.
    public Boolean checkIfAuthorFollowed(User user, Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        Boolean exists = null;
        
        try {
            
            query = "select * from followedauthors f where f.UserID = ? and f.AuthorID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.setInt(2, writer.getUserID());
            rs = ps.executeQuery();
            
            if (rs.next()){
                
                exists = true;
                
            } else {
                
                exists = false;
                
            }
            
        } catch (SQLException e) {
            
            message = "Error following the selected Author.";
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error following the selected Author.", e);
            
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
    
    
    @Override       //Completed: Allows a user to see which authors they follow.
    public List<Writer> getFollowedAuthors(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Writer> followedAuthors = new ArrayList<>();
        
        try {
            
            query = "select u.UserID, u.Name, u.Surname from users u, followedauthors f where u.UserID = f.AuthorID and f.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                followedAuthors.add(new Writer(rs.getInt(1), rs.getString(2), rs.getString(3)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting followed Authors.", e);
            
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
        
        return followedAuthors;
        
    }
    
    
    @Override       //Completed: Gets stories from selected genres.
    public List<Story> getStoriesFromGenres(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> favoriteStories = new ArrayList<>();
        
        try {
            
            query = "select DISTINCT s.StoryID, s.Title, s.CoverImage, s.AuthorID, s.Likes from stories s, storygenreintersect g, " +
                    "usergenreintersect i where i.UserID = ? and i.GenreID = g.GenreID and s.StoryID = g.StoryID order by s.Likes desc";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
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
                
                favoriteStories.add(new Story(rs.getInt(1), rs.getString(2), rs.getInt(4), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all Favorites.", e);
            
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
        
        return favoriteStories;
        
    }
    
    
    @Override       //Completed: Gets the top picks for the week.
    public List<Story> getWeeksTopPicks() {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> weeksTopPicks = new ArrayList<>();
        
        try {
            
            LocalDate endDate = LocalDate.now();
            LocalDate startDate = endDate.minusDays(7);
            
            String date1 = String.valueOf(startDate);
            String date2 = String.valueOf(endDate);
            
            query = "select DISTINCT s.StoryID, s.Title, s.CoverImage, s.AuthorID, s.Likes from stories s where s.DatePublished between ? and ? order by s.Likes desc limit 10";
            
            ps = conn.prepareStatement(query);
            ps.setDate(1, functionsClass.stringToDate(date1));
            ps.setDate(2, functionsClass.stringToDate(date2));
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
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
                
                weeksTopPicks.add(new Story(rs.getInt(1), rs.getString(2), rs.getInt(4), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all Favorites.", e);
            
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
        
        return weeksTopPicks;
        
    }
    
    
    @Override       //Completed: Gets the recommended picks for the week.
    public List<Story> getRecommendedBooks() {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> recommendedStories = new ArrayList<>();
        
        try {
            
            LocalDate endDate = LocalDate.now();
            LocalDate startDate = endDate.minusDays(7);
            
            String date1 = String.valueOf(startDate);
            String date2 = String.valueOf(endDate);
            
            query = "select DISTINCT s.StoryID, s.Title, s.CoverImage, s.AuthorID, s.Views from stories s where s.DatePublished between ? and ? order by s.Views desc limit 10";
            
            ps = conn.prepareStatement(query);
            ps.setDate(1, functionsClass.stringToDate(date1));
            ps.setDate(2, functionsClass.stringToDate(date2));
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
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
                
                recommendedStories.add(new Story(rs.getInt(1), rs.getString(2), rs.getInt(4), image));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all Favorites.", e);
            
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
        
        return recommendedStories;
        
    }
    
    
    @Override       //Completed: Allows a user to see all their favorite books that they have read.
    public List<Story> getReadFavorites(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> readFavoriteStories = new ArrayList<>();
        
        try {
            
            query = "select s.Title, s.CoverImage, concat_ws(\" \", u.Name, u.Surname) as Name from stories s, users u, readandfavorites f where f.StoryID = s.StoryID " +
                    "and s.AuthorID = u.UserID and f.IsRead = 1 and f.IsFavorite = 1 and f.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
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
                
                readFavoriteStories.add(new Story(rs.getString(1), rs.getString(3), image, imagePath));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all read Favorites.", e);
            
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
        
        return readFavoriteStories;
        
    }
    
    
    @Override       //Completed: Allows a user to see all their favorite books that they have not read.
    public List<Story> getUnreadFavorites(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        List<Story> readFavoriteStories = new ArrayList<>();
        
        try {
            
            query = "select s.Title, s.CoverImage, concat_ws(\" \", u.Name, u.Surname) as Name from stories s, users u, readandfavorites f where f.StoryID = s.StoryID " +
                    "and s.AuthorID = u.UserID and f.IsRead = 0 and f.IsFavorite = 1 and f.UserID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                String imagePath = rs.getString(2);
                
                InputStream input = new FileInputStream(new File(imagePath));
                ByteArrayOutputStream output = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                
                while ((bytesRead = input.read(buffer)) != -1) {
                    
                    output.write(buffer, 0, bytesRead);
                    
                }
                
                byte[] imageBytes = output.toByteArray();
                String image = Base64.getEncoder().encodeToString(imageBytes);
                
                readFavoriteStories.add(new Story(rs.getString(1), rs.getString(3), image, imagePath));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ReaderImplementation.class.getName()).log(Level.FINE, "Error getting all read Favorites.", e);
            
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
        
        return readFavoriteStories;
        
    }
    
    
}
    
