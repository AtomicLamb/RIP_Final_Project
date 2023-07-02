package TrialAndError.ReadersAreInnovators.Models.StoryElements;

import java.util.Base64;
import java.util.List;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Story {
    
    
    private Integer storyID;
    private String title;
    private Integer authorID;
    private String authorName;
    private Integer views;
    private Integer likes;
    private Double ratingAverage;
    private List<Genre> genres;
    private String storyBody;
    private String synopsis;
    private String coverImage;
    private String imagePath;
    private Boolean isPrivate;
    private Boolean commentsEnabled;
    private String datePublished;
    private Integer editorID;
    private Double data;
    
    
    public Story(){
        
    }
    public Story(Integer storyID) {
        
        this.storyID = storyID;
        
    }
    
    public Story(Integer storyID, String title) {
        
        this.storyID = storyID;
        this.title = title;
        
    }
    
    public Story(String title, Integer authorID) {
        
        this.title = title;
        this.authorID = authorID;
        
    }
    
    public Story(Integer storyID, String title, String coverImage){
        
        this.storyID = storyID;
        this.title = title;
        this.coverImage = coverImage;
        
    }
    
    public Story(Integer storyID, String title, Double data) {
        
        this.storyID = storyID;
        this.title = title;
        this.data = data;
        
    }
    
    public Story(String title, String authorName,String coverImage, String imagePath) {
        
        this.title = title;
        this.authorName = authorName;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        
    }
    
    public Story(String title, Integer authorID, String coverImage, String imagePath) {
        
        this.title = title;
        this.authorID = authorID;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        
    }
    
    public Story(String title, Integer storyID, String coverImage, String imagePath, Boolean commentsEnabled, String synopsis, String storyBody) {
        
        this.title = title;
        this.storyID = storyID;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        this.commentsEnabled = commentsEnabled;
        this.synopsis = synopsis;
        this.storyBody = storyBody;
        
    }
    
    public Story(String title, Integer authorID, String storyBody, String synopsis, String coverImage, Boolean commentsEnabled) {
        
        this.title = title;
        this.authorID = authorID;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.commentsEnabled = commentsEnabled;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, String storyBody, String synopsis, String coverImage, Boolean commentsEnabled) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.commentsEnabled = commentsEnabled;
        
    }
    
    public Story(String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String synopsis, String coverImage, String imagePath, String datePublished) {
        
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        this.datePublished = datePublished;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, String storyBody, String synopsis, String coverImage, Boolean commentsEnabled, String datePublished) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.commentsEnabled = commentsEnabled;
        this.datePublished = datePublished;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, String storyBody, String synopsis, String coverImage, String imagePath, Boolean commentsEnabled, Integer editorID) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        this.commentsEnabled = commentsEnabled;
        this.editorID = editorID;
        
    }
    
    public Story(String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String storyBody, String synopsis, String coverImage, String imagePath, Boolean isPrivate, String datePublished, Integer editorID) {
        
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        this.isPrivate = isPrivate;
        this.datePublished = datePublished;
        this.editorID = editorID;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String storyBody, String synopsis, String coverImage, String imagePath, Boolean commentsEnabled, String datePublished, Integer editorID) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        this.commentsEnabled = commentsEnabled;
        this.datePublished = datePublished;
        this.editorID = editorID;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, String authorName, Integer views, Integer likes, String storyBody, String synopsis, String coverImage, Boolean isPrivate, Boolean commentsEnabled, String datePublished, Integer editorID) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.authorName = authorName;
        this.views = views;
        this.likes = likes;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.isPrivate = isPrivate;
        this.commentsEnabled = commentsEnabled;
        this.datePublished = datePublished;
        this.editorID = editorID;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, String authorName, Integer views, Integer likes, Double ratingAverage, String storyBody, String synopsis, String coverImage, Boolean isPrivate, Boolean commentsEnabled, String datePublished, Integer editorID) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.authorName = authorName;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.isPrivate = isPrivate;
        this.commentsEnabled = commentsEnabled;
        this.datePublished = datePublished;
        this.editorID = editorID;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String storyBody, String synopsis, String coverImage, String imagePath, Boolean isPrivate, String datePublished, Double data) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.imagePath = imagePath;
        this.isPrivate = isPrivate;
        this.datePublished = datePublished;
        this.data = data;
        
    }
    
    
    public Integer getStoryID() {
        return storyID;
    }
    
    public void setStoryID(Integer storyID) {
        this.storyID = storyID;
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
    
    public String getAuthorName() {
        return authorName;
    }
    
    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }
    
    public Integer getViews() {
        return views;
    }
    
    public void setViews(Integer views) {
        this.views = views;
    }
    
    public Integer getLikes() {
        return likes;
    }
    
    public void setLikes(Integer likes) {
        this.likes = likes;
    }
    
    public Double getRatingAverage() {
        return ratingAverage;
    }
    
    public void setRatingAverage(Double ratingAverage) {
        this.ratingAverage = ratingAverage;
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
    
    public String getImagePath() {
        return imagePath;
    }
    
    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    
    public Boolean getPrivate() {
        return isPrivate;
    }
    
    public void setPrivate(Boolean aPrivate) {
        isPrivate = aPrivate;
    }
    
    public Boolean getCommentsEnabled() {
        return commentsEnabled;
    }
    
    public void setCommentsEnabled(Boolean commentsEnabled) {
        this.commentsEnabled = commentsEnabled;
    }
    
    public String getDatePublished() {
        return datePublished;
    }
    
    public void setDatePublished(String datePublished) {
        this.datePublished = datePublished;
    }
    
    public Integer getEditorID() {
        return editorID;
    }
    
    public void setEditorID(Integer editorID) {
        this.editorID = editorID;
    }
    
    public Double getData() {
        return data;
    }
    
    public void setData(Double data) {
        this.data = data;
    }
    
    @Override
    public String toString() {
        
        return "Story{" +
                "storyID=" + storyID +
                ", title='" + title + '\'' +
                ", authorID=" + authorID +
                ", views=" + views +
                ", likes=" + likes +
                ", ratingAverage=" + ratingAverage +
                ", storyBody='" + storyBody + '\'' +
                ", synopsis='" + synopsis + '\'' +
                ", coverImage=" + coverImage +
                ", isPrivate=" + isPrivate +
                ", commentsEnabled=" + commentsEnabled +
                ", datePublished='" + datePublished + '\'' +
                ", editorID=" + editorID +
                ", data=" + data +
                '}';
        
    }
    
    
}
