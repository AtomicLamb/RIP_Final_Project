package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.util.ArrayList;

/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface UserDAOInterface{
    
    
    ArrayList<String> search(String topic);
    User getUser(User user);
    User login(User user);
    String editPersonalInfo(User user);
    String emailVerification(String email);
    String referFriend(Integer phoneNumber);
    
    
}
