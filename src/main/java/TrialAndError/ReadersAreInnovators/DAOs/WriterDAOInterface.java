package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;
import java.util.List;


public interface WriterDAOInterface {
    
    
    String writerRegistration(WriterApplication writerApplication);
    Story getDraft(Story story);
    ArrayList<Story> getAllDrafts(Writer writer);
    String editDraft(Story story);
    Writer getAuthor(Writer writer);
    
    
}
