package TrialAndError.ReadersAreInnovators.ServiceLayers;


import TrialAndError.ReadersAreInnovators.DAOs.*;
import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class ServiceLayerClass implements ServiceLayer_Interface{
    
    
    AdminEditorImplementation adminImp;
    AnalyticsImplementation analyticsImp;
    CommentImplementation commentImp;
    EditorImplementation editorImp;
    GenresImplementation genresImp;
    RatingImplementation ratingImp;
    ReaderImplementation readerImp;
    StoryImplementation storyImp;
    WriterImplementation writerImp;
    UserImplementation userImp;
    
    
    public ServiceLayerClass() {
        
        
        this.adminImp = new AdminEditorImplementation();
        this.analyticsImp = new AnalyticsImplementation();
        this.commentImp = new CommentImplementation();
        this.editorImp = new EditorImplementation();
        this.genresImp = new GenresImplementation();
        this.storyImp = new StoryImplementation();
        this.ratingImp = new RatingImplementation();
        this.readerImp = new ReaderImplementation();
        this.writerImp = new WriterImplementation();
        this.userImp = new UserImplementation();
        
    }
    
    @Override
    public String removeEditor(Editor editor) {
        return null;
    }
    
    @Override
    public String addEditor(Editor editor) {
        return null;
    }
    
    @Override
    public Integer getLikes(Story story) {
        return null;
    }
    
    @Override
    public Integer getViews(Story story) {
        return null;
    }
    
    @Override
    public Integer getAuthorFollowCount(Writer writer) {
        return null;
    }
    
    @Override
    public String addView(Story story) {
        return null;
    }
    
    @Override
    public ArrayList<Story> getMostViewedStories(Integer noOfStories, Date startPeriod, Date endPeriod) {
        return null;
    }
    
    @Override
    public ArrayList<Story> getHighestRatedStories(Integer noOfStories, Date startPeriod, Date endPeriod) {
        return null;
    }
    
    @Override
    public ArrayList<Story> getMostLikedStories(Integer noOfStories, Date startPeriod, Date endPeriod) {
        return null;
    }
    
    @Override
    public ArrayList<Genre> getTopGenres(Integer noOfGenres, Date startPeriod, Date endPeriod) {
        return null;
    }
    
    @Override
    public ArrayList<Writer> getTopWriters(Integer noOfWriters, Date startPeriod, Date endPeriod) {
        return null;
    }
    
    @Override
    public ArrayList<Editor> getTopEditors(Integer noOfEditors, Date startPeriod, Date endPeriod) {
        return null;
    }
    
    @Override
    public String addComment(Comment comment) {
        return null;
    }
    
    @Override
    public List<Comment> getComments(Story story) 
    {
        return null;
    }
    
    @Override
    public String reportComment(Comment comment) {
        return null;
    }
    
    @Override
    public String deleteComment(Comment comment) {
        return commentImp.deleteComment(comment);
    }
    
    @Override
    public String unFlagComment(Comment comment) {
        return commentImp.unFlagComment(comment);
    }
    
    @Override
    public List<Comment> viewFlaggedComments() 
    {
        return commentImp.viewFlaggedComments();
    }
    
    @Override
    public Integer getNumberOfComments(Story story) {
        return null;
    }
    
    @Override
    public String clearComments(Story story) {
        return null;
    }
    
    @Override
    public ArrayList<WriterApplication> viewWriterApplications() {
        return null;
    }
    
    
    @Override
    public String denyWriter(Writer writer) {
        return null;
    }
    
    @Override
    public List<Writer> viewWriters() {
        return editorImp.viewWriters();
    }
    
    @Override
    public String approvePendingStory(StoryApplication story, Editor editor) {
        return null;
    }
    
    @Override
    public String denyPendingStory(StoryApplication story, Editor editor) {
        return null;
    }
    
    
    @Override
    public String addGenre(Genre genre) 
    {
        return genresImp.addGenre(genre);   
    }
    
    @Override
    public String removeGenre(Genre genre) {
        return genresImp.removeGenre(genre);
    }
    
    @Override
    public String selectGenre(User user, Genre genre) {
        return null;
    }
    
    @Override
    public String deselectGenre(User user, Genre genre) {
        return null;
    }
    
    @Override
    public List<Genre> getGenres() 
    {
        return genresImp.getGenres();
    }
    
    @Override
    public ArrayList<Genre> getUserGenres(User user) {
        return null;
    }
    
    @Override
    public String clearGenres(Story story) {
        return null;
    }
    
    @Override
    public Double getStoryRating(Story story) {
        return null;
    }
    
    @Override
    public String rateStory(Rating rating) {
        return null;
    }
    
    @Override
    public String changeRating(Rating rating) {
        return null;
    }
    
    @Override
    public String removeRating(Rating rating) {
        return null;
    }
    
    @Override
    public String clearRating(Story story) {
        return null;
    }
    
    @Override       //Done
    public String registerReader(Reader reader) {
        
        return readerImp.registerReader(reader);
        
    }
    
    @Override
    public Reader login(User user) {
        return null;
    }
    
    @Override
    public String editPersonalInfo(User user) {
        return null;
    }
    
    @Override
    public String followAuthor(Writer writer, User user) {
        return readerImp.followAuthor(writer, user);
    }
    
    @Override
    public ArrayList<Story> getAllFavorites(User user) {
        return null;
    }
    
    @Override
    public ArrayList<Story> getReadFavorites(User user) {
        return null;
    }
    
    @Override
    public ArrayList<Story> getUnreadFavorites(User user) {
        return null;
    }
    
    @Override
    public String removeStory(Story story) {
        return null;
    }
    
    @Override
    public String privatizeStory(Story story) {
        return null;
    }
    
    @Override
    public String publiciseStory(Story story) {
        return null;
    }
    
    @Override
    public String submitStory(Story story) {
        return null;
    }
    
    @Override
    public String readStory(Story story, User user) {
        return null;
    }
    
    @Override
    public ArrayList<Story> getPublishedStories(Writer writer) {
        return null;
    }
    
    @Override
    public Story displayStoryDetails(Story story) {
        return null;
    }
    
    @Override
    public String createStory(Story story) {
        return null;
    }
    
    @Override
    public Story getPendingStory(Story story) {
        return null;
    }
    
    @Override
    public String likeStory(Story story, User user) {
        return null;
    }
    
    @Override
    public String unlikeStory(Story story, User user) {
        return null;
    }
    
    @Override
    public ArrayList<String> search(String topic) {
        return null;
    }
    
    @Override
    public String writerRegistration(WriterApplication writerApplication) {
        
        Reader reader = new Reader(writerApplication.getName(),writerApplication.getSurname(),writerApplication.getEmail(),
                writerApplication.getPhoneNumber(),writerApplication.getPassword());
        
        return readerImp.registerReader(reader) + writerImp.writerRegistration(writerApplication);
    }
    
    @Override
    public Story getDraft(Story story) {
        return null;
    }
    
    
    @Override
    public String editDraft(Story story) {
        return null;
    }
    
    @Override
    public Writer getAuthor(Writer writer) {
        return writerImp.getAuthor(writer);
    }
    @Override 
    public String revokeWriterPrivileges(Writer writer)
    {
        return editorImp.revokeWriterPrivileges(writer);
    }
}
