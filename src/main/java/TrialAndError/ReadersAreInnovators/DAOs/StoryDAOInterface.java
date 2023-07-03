package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;

/**
 * @Desctripion:    The Stories DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface StoryDAOInterface {
    
    
    String removeStory(Story story);
    String privatizeStory(Story story);
    String publiciseStory(Story story);
    String submitStory(Story story);
    String readStory(Story story, User user);
    ArrayList<Story> getPublishedStories(Writer writer);
    Story displayStoryDetails(Story story);
    String saveAsDraft(Story story);
    String updateDraft(Story story);
    String likeStory(Story story, User user);
    String unlikeStory(Story story, User user);
    Boolean checkIfLiked(Story story, User user);
    
    
}
