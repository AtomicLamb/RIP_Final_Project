package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;


/**
 * @Desctripion:    The Rating DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface RatingDAOInterface {
    
    
    Double getStoryRating(Story story);
    
    String rateStory(Rating rating);
    
    String changeRating(Rating rating);
    
    String removeRating(Rating rating);
    
    Boolean checkRatingExists(Rating rating);
    
    
}
