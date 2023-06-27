package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.DatabaseConnectionManager;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public class AnalyticsImplementation implements AnalyticsDAOInterface{
    
    
    //
    //TODO Tests, Logger....
    
    
    private static Logger logger;
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    FunctionsClass functionsClass = new FunctionsClass();
    
    
    public AnalyticsImplementation() {
        
    }
    
    
    @Override       //Complete: Gets likes to display on a story details page.
    public Integer getLikes(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select s.Likes from stories s where s.StoryID = ?";
        Integer likes = null;
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            rs.next();
            likes = rs.getInt(1);
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting number of story likes.", e);
            
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
        
        return likes;
        
    }
    
    @Override       //Complete: Gets views to display on a story details page.
    public Integer getViews(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        Integer views = null;
        query = "select s.Views from stories s where s.StoryID = ?";
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            rs.next();
            views = rs.getInt(4);
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting number of Story views.", e);
            
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
        
        return views;
        
    }
    
    @Override       //Complete: Gets number of people following the specified author.
    public Integer getAuthorFollowCount(Writer writer) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select count(f.userID) as TotalFollows from users u, followedAuthors f where u.UserID = f.UserID and f.authorID = ?";
        Integer authorFollowCount = null;
        
        try{
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, writer.getUserID());
            rs = ps.executeQuery();
            rs.next();
            
            authorFollowCount = rs.getInt(1);
            
        } catch(SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting number of Author Followers.", e);
            
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
        
        return authorFollowCount;
        
    }
    
    @Override       //Complete: Adds a view to a read story.
    public String addView(Story story) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "select views from readers_are_innovators.stories where StoryID = ?";
        Integer views;
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setInt(1, story.getStoryID());
            rs = ps.executeQuery();
            rs.next();
            views = rs.getInt(1);
            views++;
            
            query = "update stories set views = ? where StoryID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, views);
            ps.setInt(2, story.getStoryID());
            int update = ps.executeUpdate();
            
            message = update + "Story has been viewed.";
            
        } catch (SQLException e) {
            
            message = "Error adding story's views.";
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error adding a story's views.", e);
            
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
    
    @Override       //Complete     //Gets X most viewed stories
    public ArrayList<Story> getMostViewedStories(Integer noOfStories, Date startPeriod, Date endPeriod) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "Select StoryID, Title from readers_are_innovators.stories where stories.DatePublished between ? AND ? order by Views desc";
        ArrayList<Story> mostViewed = new ArrayList<>();
        Integer i = 0;
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setDate(1, startPeriod);
            ps.setDate(2, endPeriod);
            rs = ps.executeQuery();
            
            while (rs.next() && i < noOfStories){
                
                i++;
                mostViewed.add(new Story(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting most viewed stories.", e);
            
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
        
        return mostViewed;
        
    }
    
    @Override       //Complete     //Gets X highest rated stories
    public ArrayList<Story> getHighestRatedStories(Integer noOfStories, Date startPeriod, Date endPeriod) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "Select StoryID, Title from readers_are_innovators.stories where stories.DatePublished between ? AND ? order by RatingAverage desc";
        ArrayList<Story> highestRated = new ArrayList<>();
        Integer i = 0;
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setDate(1, startPeriod);
            ps.setDate(2, endPeriod);
            rs = ps.executeQuery();
            
            while (rs.next() && i < noOfStories){
                
                i++;
                highestRated.add(new Story(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting highest rated stories.", e);
            
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
        
        return highestRated;
        
    }
    
    @Override       //Complete     //Gets X most liked stories
    public ArrayList<Story> getMostLikedStories(Integer noOfStories, Date startPeriod, Date endPeriod) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "Select StoryID, Title from readers_are_innovators.stories where stories.DatePublished between ? AND ? order by Likes desc";
        ArrayList<Story> mostLiked = new ArrayList<>();
        Integer i = 0;
        
        try {
            
            ps = conn.prepareStatement(query);
            ps.setDate(1, startPeriod);
            ps.setDate(2, endPeriod);
            rs = ps.executeQuery();
            
            while (rs.next() && i < noOfStories){
                
                i++;
                mostLiked.add(new Story(rs.getInt(1), rs.getString(2)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting most liked stories.", e);
            
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
        
        return mostLiked;
        
    }
    
    @Override       //Not Complete      //Gets X most popular Genres.
    public ArrayList<Genre> getTopGenres(Integer noOfGenres, Date startPeriod, Date endPeriod) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "Select g.Genre, sum(s.Views) as TotalViews from genres g, stories s, storygenreintersect i where g.GenreID = i.GenreID " +
                "and i.StoryID = s.StoryID group by g.Genre order by sum(s.Views) desc";
        ArrayList<Genre> topGenres = new ArrayList<>();
        Integer i = 0;
        
        try {
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next() && i < noOfGenres){
                
                i++;
                topGenres.add(new Genre(rs.getString(1)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting most viewed genres.", e);
            
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
        
        return topGenres;
        
    }
    
    @Override       //Not Complete      //Gets X top Writers.
    public ArrayList<Writer> getTopWriters(Integer noOfWriters, Date startPeriod, Date endPeriod) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "Select u.UserID, u.Name, u.Surname, sum(s.views) as Views from users u, stories s where u.UserID = s.AuthorID " +
                "GROUP BY u.UserID order by sum(s.Views) desc";
        ArrayList<Writer> topWriters = new ArrayList<>();
        Integer i = 0;
        
        try {
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next() && i < noOfWriters){
                
                i++;
                //topWriters.add(new Writer(rs.getInt(1) ,rs.getString(2), rs.getString(3), rs.getDouble(4)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting most viewed writers.", e);
            
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
        
        return topWriters;
        
    }
    
    @Override       //Not Complete      //Gets X top editors.
    public ArrayList<Editor> getTopEditors(Integer noOfEditors, Date startPeriod, Date endPeriod) {
        
        conn = DatabaseConnectionManager.getConnection();
        query = "Select u.UserID, u.Name, u.Surname, COUNT(s.EditedByID) as StoriesEdited from users u, stories s " +
                "where u.UserID = s.EditedByID GROUP BY u.UserID order by COUNT(s.EditedByID) desc";
        ArrayList<Editor> topEditors = new ArrayList<>();
        Integer i = 0;
        
        try {
            
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next() && i < noOfEditors){
                
                i++;
                topEditors.add(new Editor(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(AnalyticsImplementation.class.getName()).log(Level.FINE, "Error getting top editors.", e);
            
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
        
        return topEditors;
        
    }
    
    
}
