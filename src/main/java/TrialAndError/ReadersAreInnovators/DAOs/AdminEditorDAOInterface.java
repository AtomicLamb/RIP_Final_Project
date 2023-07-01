package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import java.util.List;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */


//TODO: Make author Luaan.
public interface AdminEditorDAOInterface {
    
    
    List<Editor> viewEditors();
    String removeEditor(Editor editor);
    String addEditor(Editor editor);
    String setBookOfDay(Story story);
    
    
}
