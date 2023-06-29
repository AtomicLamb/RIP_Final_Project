package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import java.util.List;


/**
 * @Desctripion:    The Admin-Editor DAO Interface.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface AdminEditorDAOInterface {
    
    
    List<Editor> viewEditors();
    String removeEditor(Editor editor);
    String addEditor(Editor editor);
    String setBookOfDay(Story story);
    
    
}
