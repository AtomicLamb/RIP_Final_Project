package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;
import java.util.List;


/**
 * @Desctripion:    The User DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface UserDAOInterface{
    
    
    List<Story> searchByTitle(String topic);
    
    List<Story> searchByAuthor(String topic);
    
    List<Story> searchByGenre(String topic);
    
    List<Writer> searchByName(String topic);
    
    List<Writer> searchByStories(String topic);
    
    User getUser(User user);
    
    User login(User user);
    
    String editPersonalInfo(User user);
    
    String emailVerification(String email);
    
    Boolean referFriend(String phoneNumber);
    
    Story getBookOfTheDay();
    
    String forgotPassword(User user, String OTP);
    
    
}
