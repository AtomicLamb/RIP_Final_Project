package TrialAndError.ReadersAreInnovators.Models.Administration;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;

import java.util.List;


/**
 * @Desctripion:    The model for a Story Application Object.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class StoryApplication {
    
    
    private Integer pendingStoryID;
    private String title;
    private Integer authorID;
    private String authorEmail;
    private String authorPhoneNumber;
    private String storyBody;
    private String synopsis;
    private List<Genre> genres;
    private String coverImage;
    private String imagePath;
    private Boolean commentsEnabled;
    private String dateSubmitted;
    
    
    public StoryApplication() {
        
    }
    
    public StoryApplication(Integer pendingStoryID) {
        
        this.pendingStoryID = pendingStoryID;
        
    }
    
    public StoryApplication(String title, Integer authorID) {
        
        this.title = title;
        this.authorID = authorID;
        
    }
    
    public StoryApplication(Integer pendingStoryID, String title, Integer authorID, String authorEmail, String authorPhoneNumber, String storyBody, String synopsis, String imagePath, Boolean commentsEnabled) {
        
        this.pendingStoryID = pendingStoryID;
        this.title = title;
        this.authorID = authorID;
        this.authorEmail = authorEmail;
        this.authorPhoneNumber = authorPhoneNumber;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.imagePath = imagePath;
        this.commentsEnabled = commentsEnabled;
        
    }
    
    public StoryApplication(Integer pendingStoryID, String title, Integer authorID, String authorEmail, String authorPhoneNumber, String storyBody, String synopsis, String coverImage, Boolean commentsEnabled, String dateSubmitted) {
        
        this.pendingStoryID = pendingStoryID;
        this.title = title;
        this.authorID = authorID;
        this.authorEmail = authorEmail;
        this.authorPhoneNumber = authorPhoneNumber;
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
    
    public String getAuthorEmail() {
        return authorEmail;
    }
    
    public void setAuthorEmail(String authorEmail) {
        this.authorEmail = authorEmail;
    }
    
    public String getAuthorPhoneNumber() {
        return authorPhoneNumber;
    }
    
    public void setAuthorPhoneNumber(String authorPhoneNumber) {
        this.authorPhoneNumber = authorPhoneNumber;
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
    
    public List<Genre> getGenres() {
        return genres;
    }
    
    public void setGenres(List<Genre> genres) {
        this.genres = genres;
    }
    
    public String getCoverImage() {
        return coverImage;
    }
    
    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }
    
    public String getImagePath() {
        return imagePath;
    }
    
    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
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
                ", authorEmail='" + authorEmail + '\'' +
                ", authorPhoneNumber='" + authorPhoneNumber + '\'' +
                ", storyBody='" + storyBody + '\'' +
                ", synopsis='" + synopsis + '\'' +
                ", genres=" + genres +
                ", coverImage='" + coverImage + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", commentsEnabled=" + commentsEnabled +
                ", dateSubmitted='" + dateSubmitted + '\'' +
                '}';
        
    }
    
    
}
