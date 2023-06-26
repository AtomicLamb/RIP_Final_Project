package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ReaderImplementation implements ReaderDAOInterface {
    
    
    //
    //
    
    
    private Connection conn;
    FunctionsClass functionsClass = new FunctionsClass();
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    
    
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
            
            message = "Reader successfully added.";
            
        } catch (SQLException e) {
            
            message = "Registration Unsuccessful.";
            System.out.println("Registration Unsuccessful.");
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
            
            System.out.println("Error logging in.");
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
        
        return loggedInUser;
        
    }
    
    @Override       //Completed: Allows a user to edit their personal details.
    public String editPersonalInfo(User user) {       //Change to update all at once...   Param is just a user....
        
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
            
            message = "Error editing information.";
            System.out.println("Error editing information.");
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
            
            message = "Error following Author.";
            System.out.println("Error following Author.");
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
    
    @Override       //TODO
    public ArrayList<Story> getAllFavorites(User user) {
        
       // conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, user.getUserID());
            ps.executeUpdate();
            
            message = "Author successfully followed.";
            
        } catch (SQLException e) {
            
            message = "Error following Author.";
            System.out.println("Error following Author.");
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
        
        return null;
        
    }
    
    @Override       //TODO
    public ArrayList<Story> getReadFavorites(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "";
            
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            
            message = "Author successfully followed.";
            
        } catch (SQLException e) {
            
            message = "Error following Author.";
            System.out.println("Error following Author.");
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
        
        return null;
        
    }
    
    @Override       //TODO
    public ArrayList<Story> getUnreadFavorites(User user) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "insert into";
            
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            
            message = "Author successfully followed.";
            
        } catch (SQLException e) {
            
            message = "Error following Author.";
            System.out.println("Error following Author.");
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
        
        return null;
        
    }
    
    
}
    
