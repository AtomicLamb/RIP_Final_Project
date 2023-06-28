package TrialAndError.ReadersAreInnovators.Models.AnalyticalData;

public class Analytics {
    
    
    private Integer numberOfAnalytics;
    private String startDate;
    private String endDate;
    
    public Analytics(){
        
    }
    
    
    public Analytics(Integer numberOfAnalytics, String startDate, String endDate) {
        
        this.numberOfAnalytics = numberOfAnalytics;
        this.startDate = startDate;
        this.endDate = endDate;
        
    }
    
    public Integer getNumberOfAnalytics() {
        return numberOfAnalytics;
    }
    
    public void setNumberOfAnalytics(Integer numberOfAnalytics) {
        this.numberOfAnalytics = numberOfAnalytics;
    }
    
    public String getStartDate() {
        return startDate;
    }
    
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }
    
    public String getEndDate() {
        return endDate;
    }
    
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
    
    @Override
    public String toString() {
        
        return "Analytics{" +
                "numberOfAnalytics=" + numberOfAnalytics +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                '}';
        
    }
    
    
}
