package TrialAndError.ReadersAreInnovators.Models.Administration;

public class StoryApplication {
    
    
    Integer pendingStoryID;
    private String title;
    private Integer authorID;
    private String storyBody;
    private String synopsis;
    private String coverImage;
    private Boolean commentsEnabled;
    private String dateSubmitted;
    
    
    public StoryApplication() {
        
    }
    
    public StoryApplication(Integer pendingStoryID, String title, Integer authorID, String storyBody, String synopsis, String coverImage, Boolean commentsEnabled, String dateSubmitted) {
        
        this.pendingStoryID = pendingStoryID;
        this.title = title;
        this.authorID = authorID;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.commentsEnabled = commentsEnabled;
        this.dateSubmitted = dateSubmitted;
        
    }
    
    
    public Integer getPendingStoryID() {
        return pendingStoryID;
    }
    
    public void setPendingStoryID(Integer pendingStoryID) {
        this.pendingStoryID = pendingStoryID;
    }
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public Integer getAuthorID() {
        return authorID;
    }
    
    public void setAuthorID(Integer authorID) {
        this.authorID = authorID;
    }
    
    public String getStoryBody() {
        return storyBody;
    }
    
    public void setStoryBody(String storyBody) {
        this.storyBody = storyBody;
    }
    
    public String getSynopsis() {
        return synopsis;
    }
    
    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }
    
    public String getCoverImage() {
        return coverImage;
    }
    
    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }
    
    public Boolean getCommentsEnabled() {
        return commentsEnabled;
    }
    
    public void setCommentsEnabled(Boolean commentsEnabled) {
        this.commentsEnabled = commentsEnabled;
    }
    
    public String getDateSubmitted() {
        return dateSubmitted;
    }
    
    public void setDateSubmitted(String dateSubmitted) {
        this.dateSubmitted = dateSubmitted;
    }
    
    
    @Override
    public String toString() {
        
        return "StoryApplication{" +
                "pendingStoryID=" + pendingStoryID +
                ", title='" + title + '\'' +
                ", authorID=" + authorID +
                ", storyBody='" + storyBody + '\'' +
                ", synopsis='" + synopsis + '\'' +
                ", coverImage='" + coverImage + '\'' +
                ", commentsEnabled=" + commentsEnabled +
                ", dateSubmitted='" + dateSubmitted + '\'' +
                '}';
        
    }
    
    
}
