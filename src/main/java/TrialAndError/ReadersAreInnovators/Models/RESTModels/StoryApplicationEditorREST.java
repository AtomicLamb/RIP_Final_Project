package TrialAndError.ReadersAreInnovators.Models.RESTModels;

import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;


/**
 * @Desctripion:    The REST model for a StoryApplication and Editor.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class StoryApplicationEditorREST {
    
    
    private StoryApplication storyApplication;
    private Editor editor;
    
    
    public StoryApplicationEditorREST() {
        
    }
    
    public StoryApplicationEditorREST(StoryApplication storyApplication, Editor editor) {
        
        this.storyApplication = storyApplication;
        this.editor = editor;
        
    }
    
    
    public StoryApplication getStoryApplication() {
        return storyApplication;
    }
    
    public void setStoryApplication(StoryApplication storyApplication) {
        this.storyApplication = storyApplication;
    }
    
    public Editor getEditor() {
        return editor;
    }
    
    public void setEditor(Editor editor) {
        this.editor = editor;
    }
    
    
    @Override
    public String toString() {
        
        return "StoryApplicationEditorREST{" +
                "storyApplication=" + storyApplication +
                ", editor=" + editor +
                '}';
        
    }
    
    
}
