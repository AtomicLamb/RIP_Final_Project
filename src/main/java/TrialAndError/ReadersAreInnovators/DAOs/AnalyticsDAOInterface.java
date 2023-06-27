package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.sql.Date;
import java.util.ArrayList;

/**
 * @Desctripion:    The Analytics DAO Interface.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface AnalyticsDAOInterface{
    
    
    Integer getLikes(Story story);
    Integer getViews(Story story);
    Integer getAuthorFollowCount(Writer writer);
    String addView(Story story);
    String addLike(Story story);
    String removeLike(Story story);
    ArrayList<Story> getMostViewedStories(Integer noOfStories, Date startPeriod, Date endPeriod);
    ArrayList<Story> getHighestRatedStories(Integer noOfStories, Date startPeriod, Date endPeriod);
    ArrayList<Story> getMostLikedStories(Integer noOfStories, Date startPeriod, Date endPeriod);
    ArrayList<Genre> getTopGenres(Integer noOfGenres, Date startPeriod, Date endPeriod);
    ArrayList<Writer> getTopWriters(Integer noOfWriters, Date startPeriod, Date endPeriod);
    ArrayList<Editor> getTopEditors(Integer noOfEditors, Date startPeriod, Date endPeriod);
    
    
}
