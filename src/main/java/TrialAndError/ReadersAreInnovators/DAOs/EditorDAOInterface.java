package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import java.util.ArrayList;
import java.util.List;


/**
 * @Desctripion:    The Editors DAO Interface.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface EditorDAOInterface {
    
    
    List<WriterApplication> viewWriterApplications();
    
    String approveWriter(WriterApplication writer);
    
    String denyWriter(Writer writer);
    
    List<Writer> viewWriters();
    
    String approvePendingStory(StoryApplication story, Editor editor);
    
    String removePendingStory(StoryApplication story);
    
    StoryApplication reviewPendingStory(StoryApplication story);
    
    ArrayList<StoryApplication> viewPendingStories();
    
    String revokeWriterPrivileges(Writer writer);
    
    
}
