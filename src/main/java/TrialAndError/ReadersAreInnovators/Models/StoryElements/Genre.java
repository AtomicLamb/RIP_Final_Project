package TrialAndError.ReadersAreInnovators.Models.StoryElements;


/**
 * @Desctripion:    The model for a Genre Object.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Genre {
    
    
    private Integer genreID;
    private String genre;
    private Double data;
    
    
    public Genre() {
          
    }
    
    public Genre(String genre) {
        
        this.genre = genre;
        
    }
    public Genre(Integer genreID) {
        
        this.genreID = genreID;
        
    }
    
    public Genre(Integer genreID, Double data) {
        
        this.genreID = genreID;
        this.data = data;
        
    }
    
    public Genre(Integer genreID, String genre) {
        
        this.genreID = genreID;
        this.genre = genre;
        
    }
    
    public Genre(String genre, Double data) {
        
        this.genre = genre;
        this.data = data;
        
    }
    
    
    public Integer getGenreID() {
        return genreID;
    }
    
    public void setGenreID(Integer genreID) {
        this.genreID = genreID;
    }
    
    public String getGenre() {
        return genre;
    }
    
    public void setGenre(String genre) {
        this.genre = genre;
    }
    
    public Double getData() {
        return data;
    }
    
    public void setData(Double data) {
        this.data = data;
    }
    
    
    @Override
    public String toString() {
        
        return "Genre{" +
                "genreID=" + genreID +
                ", genre='" + genre + '\'' +
                ", data=" + data +
                '}';
        
    }
    
    
}
