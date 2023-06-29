package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.util.ArrayList;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface UserDAOInterface{
    
    
    ArrayList<String> search(String topic);
    User getUser(User user);
    User login(User user);
    String editPersonalInfo(User user);
    String emailVerification(String email);
    String referFriend(Integer phoneNumber);
    
    
}
