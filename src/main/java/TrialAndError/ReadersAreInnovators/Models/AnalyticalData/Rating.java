package TrialAndError.ReadersAreInnovators.Models.AnalyticalData;


/**
 * @Desctripion:    The model for a Rating Object.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Rating {
    
    
    private Integer userID;
    private Integer storyID;
    private Integer rating;
    private Double data;
    
    
    public Rating() {
        
    }
    
    public Rating(Integer userID, Integer storyID, Integer rating) {
        
        this.userID = userID;
        this.storyID = storyID;
        this.rating = rating;
        
    }
    
    
    public Integer getUserID() {
        return userID;
    }
    
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    public Integer getStoryID() {
        return storyID;
    }
    
    public void setStoryID(Integer storyID) {
        this.storyID = storyID;
    }
    
    public Integer getRating() {
        return rating;
    }
    
    public void setRating(Integer rating) {
        this.rating = rating;
    }
    
    public Double getData() {
        return data;
    }
    
    public void setData(Double data) {
        this.data = data;
    }
    
    
    @Override
    public String toString() {
        
        return "Rating{" +
                "userID=" + userID +
                ", storyID=" + storyID +
                ", rating=" + rating +
                ", data=" + data +
                '}';
        
    }
    
    
}
