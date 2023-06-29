package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface RatingDAOInterface {
    
    
    Double getStoryRating(Story story);
    String rateStory(Rating rating);
    String changeRating(Rating rating);
    String removeRating(Rating rating);
    
    
}
