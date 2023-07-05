package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;

public class StoryApplicationGenreREST {
    
    private StoryApplication storyApplication;
    private Genre genre;
    
    
    public StoryApplicationGenreREST() {
        
    }
    
    public StoryApplicationGenreREST(StoryApplication storyApplication, Genre genre) {
        
        this.storyApplication = storyApplication;
        this.genre = genre;
        
    }
    
    
    public StoryApplication getStoryApplication() {
        return storyApplication;
    }
    
    public void setStoryApplication(StoryApplication storyApplication) {
        this.storyApplication = storyApplication;
    }
    
    public Genre getGenre() {
        return genre;
    }
    
    public void setGenre(Genre genre) {
        this.genre = genre;
    }
    
    
    @Override
    public String toString() {
        
        return "StoryApplicationGenreREST{" +
                "storyApplication=" + storyApplication +
                ", genre=" + genre +
                '}';
        
    }
    
    
}
