package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import java.util.List;


/**
 * @Desctripion:    The Admin-Editors DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */


public interface AdminEditorDAOInterface {
    
    
    List<Editor> viewEditors();
    
    String removeEditor(Editor editor);
    
    String addEditor(Editor editor);
    
    
}
