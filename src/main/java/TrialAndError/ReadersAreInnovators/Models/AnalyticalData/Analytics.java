package TrialAndError.ReadersAreInnovators.Models.AnalyticalData;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Analytics {
    
    
    private String analyticType;
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
    
    public Analytics(String analyticType, Integer numberOfAnalytics, String startDate, String endDate) {
        
        this.analyticType = analyticType;
        this.numberOfAnalytics = numberOfAnalytics;
        this.startDate = startDate;
        this.endDate = endDate;
        
    }
    
    
    public String getAnalyticType() {
        return analyticType;
    }
    
    public void setAnalyticType(String analyticType) {
        this.analyticType = analyticType;
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
                "analyticType='" + analyticType + '\'' +
                ", numberOfAnalytics=" + numberOfAnalytics +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                '}';
        
    }
    
    
}
