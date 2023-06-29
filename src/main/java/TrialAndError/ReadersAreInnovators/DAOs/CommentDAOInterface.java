package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;

import java.util.ArrayList;
import java.util.List;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface CommentDAOInterface {
    
    
    String addComment(Comment comment);             //Allows a user to comment on a story
    ArrayList<Comment> getComments(Story story);                                //Gets the comments to display in the story details page.
    String reportComment(Comment comment);                                        //Allows the user to report the comment for review.
    String deleteComment(Comment comment);                                        //Allows the editors to remove reported comments.
    String unFlagComment(Comment comment);                                        //Allows the editors to un-flag reported comments.
    List<Comment> viewFlaggedComments();                                       //Allows the editors to view all the reported comments.
    Integer getNumberOfComments(Story story);
    
    
}
