package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.util.List;


/**
 * @Desctripion:    The REST model for a List of Genres and User.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */


public class UserGenreListREST {
    
    
    private User user;
    private List<Genre> genres;
    
    
    public UserGenreListREST() {
        
    }
    
    public UserGenreListREST(User user, List<Genre> genres) {
        
        this.user = user;
        this.genres = genres;
        
    }
    
    
    public User getUser() {
        return user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    
    public List<Genre> getGenres() {
        return genres;
    }
    
    public void setGenres(List<Genre> genres) {
        this.genres = genres;
    }
    
    
    @Override
    public String toString() {
        
        return "UserGenreListREST{" +
                "user=" + user +
                ", genres=" + genres +
                '}';
        
    }
    
    
}
