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
import java.util.ArrayList;
import java.util.Base64;

public class StoryImplementation implements StoryDAOInterface {
    
    
    //
    //
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    private byte[] decoder;
    private InputStream inputStream;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public StoryImplementation() {
        
    }
    
    
    @Override
    public String removeStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        
        try {
            
            query = "delete from stories s where s.StoryID = ?";
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story successfully removed.";
            
        }catch (SQLException e){
            
            System.out.println("Story successfully removed.");
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
    
    @Override
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
            
            System.out.println("Error privatizing story.");
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
    
    @Override
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
            
            System.out.println("Error publicising story.");
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
    
    @Override
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
            
            message = "Error adding story to pending ";
            System.out.println("Error adding story to pending ");
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
            System.out.println("Error reading the story.");
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
    
    @Override
    public ArrayList<Story> getPublishedStories(Writer writer) {
        File img = new File("C:\\Users\\TKS\\Desktop\\VZAP Project\\Images", "StupidFileNameBitch");
        FileOutputStream fs = null;
        
            try {
                fs = new FileOutputStream(img);
            } catch (FileNotFoundException e) {
                System.out.println("Error creating image");
                e.printStackTrace();
            } finally {
                
                if (conn!=null){
                    
                    try {
                        
                        conn.close();
                        
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
                
                if (rs!=null){
                    
                    try {
                        
                        rs.close();
                        
                    } catch (SQLException e) {
                        
                        throw new RuntimeException(e);
                        
                    }
                    
                }
                
            }
        
        ArrayList<Story> publishedStories = new ArrayList<>();
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select * from readers_are_innovators.stories where AuthorID = ?";
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                
                byte[] buffer = new byte[1];
                
                InputStream is = rs.getBinaryStream(9);
                while (is.read(buffer) > 0) {
                    
                    fs.write(buffer);
                    
                }
                
                publishedStories.add(new Story(rs.getString(2), rs.getInt(3), null));
                
            }
            if(publishedStories.size() == 0){
                
                publishedStories = null;
                return publishedStories;
                
            }
            
        } catch (SQLException e) {
            
            System.out.println("Error getting writers published stories.");
            e.printStackTrace();
            
        } catch (FileNotFoundException e) {
            
            System.out.println("Error getting image because Blobs are rubbish.");
            e.printStackTrace();
            
        } catch (IOException e) {
            
            
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
        
        return publishedStories;
        
    }
    
    @Override
    public Story displayStoryDetails(Story story) {
        
        Story s = null;
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select * from readers_are_innovators.stories where StoryID = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            
            rs = ps.executeQuery();
            rs.next();
            
            byte[] buffer = new byte[1];
            
            InputStream is = rs.getBinaryStream(9);
            while (is.read(buffer) > 0) {
                
                
                
            }
            s = new Story(rs.getString(2), rs.getInt(3), rs.getInt(4),
                    rs.getInt(5), rs.getDouble(6), rs.getString(8), null, " ");
            
        } catch (SQLException e) {
            System.out.println("Error displaying story details");
            e.printStackTrace();
        } catch (IOException e) {
            System.out.println("IO Exception on line 220");
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
        
        return s;
    }
    
    @Override
    public String createStory(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "insert into readers_are_innovators.drafts(Title, AuthorID, StoryBody, Synopsis, CoverImage) values(?,?,?,?,?)";
        
        InputStream inputStream;
        
        try {
            
            
            ps = conn.prepareStatement(query);
            ps.setString(1, story.getTitle());
            ps.setInt(2, story.getAuthorID());
            ps.setString(3, story.getStoryBody());
            ps.setString(4, story.getSynopsis());
            
            int update = ps.executeUpdate();
            message = update + " story created";
            
        } catch (SQLException e) {
            System.out.println("Error creating story");
            e.printStackTrace();
        
        } finally{
            if(conn!= null){
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("error closing connection");
                    e.printStackTrace();
                }
            }
        }
        
        return message;
    }
    
    @Override
    public Story getPendingStory(Story story) {
        Story s = new Story();
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select * from readers_are_innovators.pendingstories where PendingStoryID = ?";
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            
            rs = ps.executeQuery();
            rs.next();
            
            byte[] buffer = new byte[1];
            
            Base64 image = null;
            
            
            s.setTitle(rs.getString(2));
            s.setAuthorID(rs.getInt(3));
            s.setStoryBody(rs.getString(4));
            s.setSynopsis(rs.getString(5));
            
            
        } catch (SQLException e) {
            
            System.out.println("Error getting pending story");
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
        
        return s;
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
            
            query = "update stories s SET s.Likes = s.Likes + 1 where s.StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            ps.executeUpdate();
            
            message = "Story has been liked.";
            
        } catch (SQLException e) {
            
            message = "Error liking the story.";
            System.out.println("Error liking the story.");
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
            System.out.println("Error unliking the story.");
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
