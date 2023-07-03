package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;
import java.util.List;


/**
 * @Desctripion:    The Readers DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface ReaderDAOInterface {
    
    
    String registerReader(Reader reader);
    String followAuthor(Writer writer, User user);
    String unfollowAuthor(Writer writer, User user);
    public Boolean checkIfAuthorFollowed(User user, Writer writer);
    ArrayList<Writer> getFollowedAuthors(User user);
    ArrayList<Story> getAllFavorites(User user);
    ArrayList<Story> getStoriesFromGenres(User user);
    List<Story> getWeeksTopPicks();
    List<Story> getRecommendedBooks();
    ArrayList<Story> getReadFavorites(User user);
    ArrayList<Story> getUnreadFavorites(User user);
    
    
}
