package TrialAndError.ReadersAreInnovators.Models.StoryElements;

public class Story {
    
    
    private Integer storyID;
    private String title;
    private Integer authorID;
    private Integer views;
    private Integer likes;
    private Double ratingAverage;
    private String storyBody;
    private String synopsis;
    private String coverImage;
    private Boolean isPrivate;
    private Boolean commentsEnabled;
    private String datePublished;
    private Integer editorID;
    private Double data;
    
    
    public Story(){
    }
    
    public Story(Integer storyID, String title){
        
        this.storyID = storyID;
        this.title = title;
        
    }
    
    public Story(Integer storyID, String title, Double data) {
        
        this.storyID = storyID;
        this.title = title;
        this.data = data;
        
    }
    
    public Story(String title, Integer authorID, String coverImage) {
        
        this.title = title;
        this.authorID = authorID;
        this.coverImage = coverImage;
        
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
    
    public Story(String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String synopsis, String coverImage, String datePublished) {
        
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.datePublished = datePublished;
        
    }
    
    public Story(String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String storyBody, String synopsis, String coverImage, Boolean isPrivate, Integer editorID, String datePublished) {
        
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
        this.isPrivate = isPrivate;
        this.editorID = editorID;
        this.datePublished = datePublished;
        
    }
    
    public Story(Integer storyID, String title, Integer authorID, Integer views, Integer likes, Double ratingAverage, String storyBody, String synopsis, String coverImage, Boolean isPrivate, String datePublished, Double data) {
        
        this.storyID = storyID;
        this.title = title;
        this.authorID = authorID;
        this.views = views;
        this.likes = likes;
        this.ratingAverage = ratingAverage;
        this.storyBody = storyBody;
        this.synopsis = synopsis;
        this.coverImage = coverImage;
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
