package TrialAndError.ReadersAreInnovators.Models.StoryElements;


/**
 * @Desctripion:    The model for a Comment Object.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Comment {
    
    
    private Integer commentID;
    private Integer storyID;
    private Integer userID;
    private String name;
    private String comment;
    private Boolean flagged;
    private String dateAdded;
    private Double data;
    
    
    public Comment() {
        
    }
    
    public Comment(Integer commentID) {
        
        this.commentID = commentID; 
        
    }
    
    public Comment(Integer storyID, Integer userID, String comment) {
        
        this.storyID = storyID;
        this.userID = userID;
        this.comment = comment;
        
    }
    
    public Comment(Integer commentID, Integer storyID, Integer userID, String name, String comment) {
        
        this.commentID = commentID;
        this.storyID = storyID;
        this.userID = userID;
        this.name = name;
        this.comment = comment;
        
    }
    
    public Comment(Integer commentID, Integer storyID, Integer userID, String name, String comment, String dateAdded) {
        
        this.commentID = commentID;
        this.storyID = storyID;
        this.userID = userID;
        this.name = name;
        this.comment = comment;
        this.dateAdded = dateAdded;
        
    }
    
    public Integer getCommentID() {
        return commentID;
    }
    
    public void setCommentID(Integer commentID) {
        this.commentID = commentID;
    }
    
    public Integer getStoryID() {
        return storyID;
    }
    
    public void setStoryID(Integer storyID) {
        this.storyID = storyID;
    }
    
    public Integer getUserID() {
        return userID;
    }
    
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getComment() {
        return comment;
    }
    
    public void setComment(String comment) {
        this.comment = comment;
    }
    
    public Boolean getFlagged() {
        return flagged;
    }
    
    public void setFlagged(Boolean flagged) {
        this.flagged = flagged;
    }
    
    public String getDateAdded() {
        return dateAdded;
    }
    
    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }
    
    public Double getData() {
        return data;
    }
    
    public void setData(Double data) {
        this.data = data;
    }
    
    
    @Override
    public String toString() {
        
        return "Comment{" +
                "commentID=" + commentID +
                ", storyID=" + storyID +
                ", userID=" + userID +
                ", name='" + name + '\'' +
                ", comment='" + comment + '\'' +
                ", flagged=" + flagged +
                ", dateAdded='" + dateAdded + '\'' +
                ", data=" + data +
                '}';
        
    }
    
    
}
