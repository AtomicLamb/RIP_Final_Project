package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.util.ArrayList;


public interface UserDAOInterface{
    
    
    ArrayList<String> search(String topic);
    User getUser(User user);
    User login(User user);
    String editPersonalInfo(User user);
    
    
}
