package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;
import java.util.List;

/**
 * @desctripion:    The concrete implementation of the AdminEditorDAO.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 */

public interface EditorDAOInterface {
    
    
    List<WriterApplication> viewWriterApplications();
    String approveWriter(WriterApplication writer); //Approve by email
    String denyWriter(Writer writer);
    List<Writer> viewWriters();
    String approvePendingStory(StoryApplication story, Editor editor);
    String removePendingStory(StoryApplication story);
    StoryApplication reviewPendingStory(StoryApplication story);
    ArrayList<StoryApplication> viewPendingStories();
    String revokeWriterPrivileges(Writer writer);
    
    
}
