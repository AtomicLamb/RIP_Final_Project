package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;


/**
 * @Desctripion:    The REST model for a User and Genre.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class UserGenreREST {
    
    
    private User user;
    private Genre genre;
    
    
    public UserGenreREST() {
        
    }
    
    public UserGenreREST(User user, Genre genre) {
        
        this.user = user;
        this.genre = genre;
        
    }
    
    
    public User getUser() {
        return user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    
    public Genre getGenre() {
        return genre;
    }
    
    public void setGenre(Genre genre) {
        this.genre = genre;
    }
    
    @Override
    public String toString() {
        
        return "UserGenreREST{" +
                "user=" + user +
                ", genre=" + genre +
                '}';
        
    }
    
    
}
