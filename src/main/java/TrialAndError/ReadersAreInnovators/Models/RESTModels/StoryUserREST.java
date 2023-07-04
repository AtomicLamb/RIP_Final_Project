package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;


/**
 * @Desctripion:    The REST model for a Story and User.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class StoryUserREST {
    
    
    private Story story;
    private User user;
    
    
    public StoryUserREST() {
        
    }
    
    public StoryUserREST(Story story, User user) {
        
        this.story = story;
        this.user = user;
        
    }
    
    
    public Story getStory() {
        return story;
    }
    
    public void setStory(Story story) {
        this.story = story;
    }
    
    public User getUser() {
        return user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    
    
    @Override
    public String toString() {
        
        return "StoryUserREST{" +
                "story=" + story +
                ", user=" + user +
                '}';
        
    }
    
    
}
