package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Analytics;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import java.util.ArrayList;
import java.util.List;


/**
 * @Desctripion:    The Analytics DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface AnalyticsDAOInterface{
    
    
    Integer getLikes(Story story);
    
    Integer getViews(Story story);
    
    Integer getAuthorFollowCount(Writer writer);
    
    String addView(Story story);
    
    String addLike(Story story);
    
    String removeLike(Story story);
    
    List<Story> getMostViewedStories(Analytics analytics);
    
    List<Story> getHighestRatedStories(Analytics analytics);
    
    ArrayList<Story> getMostLikedStories(Analytics analytics);
    
    ArrayList<Genre> getTopGenres(Analytics analytics);
    
    ArrayList<Writer> getTopWriters(Analytics analytics);
    
    ArrayList<Editor> getTopEditors(Analytics analytics);
    
    
}
