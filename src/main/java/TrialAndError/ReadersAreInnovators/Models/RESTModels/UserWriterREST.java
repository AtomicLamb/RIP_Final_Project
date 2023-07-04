package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;


/**
 * @Desctripion:    The REST model for a User and Writer.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class UserWriterREST {
    
    private User user;
    private Writer writer;
    
    
    public UserWriterREST() {
        
    }
    
    public UserWriterREST(User user, Writer writer) {
        
        this.user = user;
        this.writer = writer;
        
    }
    
    
    public User getUser() {
        return user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    
    public Writer getWriter() {
        return writer;
    }
    
    public void setWriter(Writer writer) {
        this.writer = writer;
    }
    
    
    @Override
    public String toString() {
        
        return "UserWriterREST{" +
                "user=" + user +
                ", writer=" + writer +
                '}';
        
    }
    
    
}
