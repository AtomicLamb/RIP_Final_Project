package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import java.util.ArrayList;
import java.util.List;


/**
 * @Desctripion:    The Comments DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface CommentDAOInterface {
    
    
    String addComment(Comment comment);
    
    ArrayList<Comment> getComments(Story story);
    
    String reportComment(Comment comment);
    
    String deleteComment(Comment comment);
    
    String unFlagComment(Comment comment);
    
    List<Comment> viewFlaggedComments();
    
    Integer getNumberOfComments(Story story);
    
    
}
