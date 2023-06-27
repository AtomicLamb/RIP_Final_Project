package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;

/**
 * @Desctripion:    The Admin-Editor DAO Interface.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface AdminEditorDAOInterface {
    
    
    String removeEditor(Editor editor);
    String addEditor(Editor editor);
    
    
}
