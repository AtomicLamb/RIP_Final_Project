package TrialAndError.ReadersAreInnovators.DAOs;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.util.ArrayList;
import java.util.List;

/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
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
    
    
}
