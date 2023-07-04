package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;
import java.util.List;

/**
 * @Desctripion:    The Writer DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface WriterDAOInterface {
    
    
    String writerRegistration(WriterApplication writerApplication);
    
    Story getDraft(Story story);
    
    List<Story> getAllDrafts(Writer writer);
    
    String editDraft(Story story);
    
    String deleteDraft(Story story);
    
    Writer getAuthor(Writer writer);
    
    
}
