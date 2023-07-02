package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.util.ArrayList;
import java.util.List;

/**
 * @Desctripion:    The Genres DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface GenresDAOInterface {
    
    
    String addGenre(Genre genre);
    String removeGenre(Genre genre);
    String selectGenre(User user, Genre genre);
    String deselectGenre(User user, Genre genre);
    List<Genre> getGenres();
    ArrayList<Genre> getUserGenres(User user);
    String addGenreToStory(Story story, Genre genre);
    String removeGenreFromStory(Story story, Genre genre);
    String addGenreToPendingStory(StoryApplication storyApplication, Genre genre);
    String removeGenreFromPendingStory(StoryApplication storyApplication, Genre genre);
    ArrayList<Genre> getStoryGenres(Story story);
    List<Genre> getPendingStoryGenres(StoryApplication storyApplication);
    
    
}
