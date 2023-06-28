package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;


public interface ReaderDAOInterface {
    
    
    String registerReader(Reader reader);
    String followAuthor(Writer writer, User user);
    String unfollowAuthor(Writer writer, User user);
    ArrayList<Writer> getFollowedAuthors(User user);
    ArrayList<Story> getAllFavorites(User user);
    ArrayList<Story> getReadFavorites(User user);
    ArrayList<Story> getUnreadFavorites(User user);
    
    
}
