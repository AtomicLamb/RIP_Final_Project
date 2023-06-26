package TrialAndError.ReadersAreInnovators.DAOs;


import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;


public interface EditorDAOInterface {
    
    
    ArrayList<WriterApplication> viewWriterApplications();
    String approveWriter(WriterApplication writer); //Approve by email
    String denyWriter(Writer writer);
    ArrayList<Writer> viewWriters();
    String approvePendingStory(StoryApplication story, Editor editor);
    String denyPendingStory(StoryApplication story, Editor editor);
    StoryApplication reviewPendingStory(StoryApplication story);
    ArrayList<StoryApplication> viewPendingStories();
    
    
}
