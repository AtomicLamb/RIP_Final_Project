package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;


/**
 * @Desctripion:    The REST model for a Story and Genre.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class StoryGenreREST {
    
    
    private Story story;
    private Genre genre;
    
    
    public StoryGenreREST() {
        
    }
    
    public StoryGenreREST(Story story, Genre genre) {
        
        this.story = story;
        this.genre = genre;
        
    }
    
    
    public Story getStory() {
        return story;
    }
    
    public void setStory(Story story) {
        this.story = story;
    }
    
    public Genre getGenre() {
        return genre;
    }
    
    public void setGenre(Genre genre) {
        this.genre = genre;
    }
    
    
    @Override
    public String toString() {
        
        return "StoryGenreREST{" +
                "story=" + story +
                ", genre=" + genre +
                '}';
        
    }
    
    
}
