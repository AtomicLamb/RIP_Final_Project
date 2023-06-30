package TrialAndError.ReadersAreInnovators.ServiceLayers;


import TrialAndError.ReadersAreInnovators.DAOs.*;
import TrialAndError.ReadersAreInnovators.Models.Administration.Email;
import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Analytics;
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
    FunctionsClass functionsClass = new FunctionsClass();
    Email email = new Email();
    private String subject;
    private String text;
    
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
    public String saveAsDraft(Story story){
        return storyImp.saveAsDraft(story);
    }
    @Override
    public String removePendingStory(StoryApplication pendingStory){
         return editorImp.removePendingStory(pendingStory);
    }
    @Override
    public ArrayList<StoryApplication> viewPendingStories(){
     
        return editorImp.viewPendingStories();
        
    }
    public ArrayList<Story> getAllDrafts(Writer writer){
        return writerImp.getAllDrafts(writer);
    }
    @Override
    public List<Writer> getFollowedAuthors(User user) {
        
        return readerImp.getFollowedAuthors(user);
        
    }
    
    @Override
    public User getUser(User user) {
        
        return userImp.getUser(user);    
        
    }
    
    @Override
    public String removeEditor(Editor editor) {
        
        return adminImp.removeEditor(editor);
        
    }
    
    @Override
    public String addEditor(Editor editor) {
        return adminImp.addEditor(editor);
    }
    
    @Override
    public Integer getLikes(Story story) {
        
        return analyticsImp.getLikes(story);
        
    }
    
    @Override
    public Integer getViews(Story story) {
        
        return analyticsImp.getViews(story);
        
    }
    
    @Override
    public Integer getAuthorFollowCount(Writer writer) {
        
        return analyticsImp.getAuthorFollowCount(writer);
        
    }
    
    @Override
    public String addView(Story story) {
        
        return analyticsImp.addView(story);
        
    }
    
    @Override 
    public List<Story> getMostViewedStories(Analytics analytics) {
        
       return analyticsImp.getMostViewedStories(analytics);
        
    }
    
    @Override
    public List<Story> getHighestRatedStories(Analytics analytics) {
        
        return analyticsImp.getHighestRatedStories(analytics);
        
    }
    
    @Override
    public ArrayList<Story> getMostLikedStories(Analytics analytics) {
        
        return analyticsImp.getMostLikedStories(analytics);
        
    }
    
    @Override
    public ArrayList<Genre> getTopGenres(Analytics analytics) {
        
        return analyticsImp.getTopGenres(analytics);
        
    }
    
    @Override
    public ArrayList<Writer> getTopWriters(Analytics analytics) {
        
        return analyticsImp.getTopWriters(analytics);
        
    }
    
    @Override
    public ArrayList<Editor> getTopEditors(Analytics analytics) {
        
        return analyticsImp.getTopEditors(analytics);
        
    }
    
    @Override
    public String addComment(Comment comment) {
        
        return commentImp.addComment(comment);
        
    }
    
    @Override
    public List<Comment> getComments(Story story) 
    {
        return commentImp.getComments(story);
        
    }
    
    @Override
    public String reportComment(Comment comment) {
        
        return commentImp.reportComment(comment);
        
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
        
        return commentImp.getNumberOfComments(story);
        
    }
    
    @Override
    public List<WriterApplication> viewWriterApplications() {
        
        return editorImp.viewWriterApplications();
        
    }
    
    
    @Override
    public String denyWriter(Writer writer) {
        
        subject = "Writer Application";
        text = "Unfortunately you have not been approved to be a writer on our platform. You may still be use our program as a reader and have reader rights";
        email = new Email();
        email.sendEmail(writer.getEmail(), subject, text);
        return editorImp.denyWriter(writer);
        
    }
    
    @Override
    public List<Writer> viewWriters() {
        return editorImp.viewWriters();
    }
    
    @Override //TODO sms things
    public String approvePendingStory(StoryApplication story, Editor editor) {
        
        subject = "Submitted Story Progress";
        text = "Congratulations! Your story has been approved and is now available for anyone to read on the Readers Are Innovators website";
        email.sendEmail(story.getAuthorEmail(), subject, text);
        
        return editorImp.approvePendingStory(story, editor);
        
    }
    
    @Override //TODO sms things
    public String denyPendingStory(StoryApplication story, Editor editor) {
        
        subject = "Submitted Story Progress";
        text = "Unfortunately your story does not adhere to the company policy and was rejected. Thank you for taking the time to use our platform.";
        email.sendEmail(story.getAuthorEmail(), subject, text);
        return editorImp.removePendingStory(story);
        
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
        
        return genresImp.selectGenre(user, genre);
        
    }
    
    @Override
    public String deselectGenre(User user, Genre genre) {
        
        return genresImp.deselectGenre(user, genre);
        
    }
    
    @Override
    public List<Genre> getGenres() 
    {
        return genresImp.getGenres();
    }
    
    @Override
    public ArrayList<Genre> getUserGenres(User user) {
        
        return genresImp.getUserGenres(user);
        
    }
    
    @Override
    public Double getStoryRating(Story story) {
        
        return ratingImp.getStoryRating(story);
        
    }
    
    @Override
    public String rateStory(Rating rating) {
        
        return ratingImp.rateStory(rating);
        
    }
    
    @Override
    public String changeRating(Rating rating) {
        
        return ratingImp.changeRating(rating);
        
    }
    
    @Override
    public String removeRating(Rating rating) {
        
        return ratingImp.removeRating(rating);
        
    }
    
    @Override
    public String registerReader(Reader reader) {
        
        String subject = "Please Verify your Email.";
        String text = "Welcome to the Readers are Innovators Program. '\n'" +
                "Please click the link below to verify your Email address: '\n''\n'" +
                "http://192.168.0.105:8080/Trial_and_Error_Readers_are_Innovators-1.0-SNAPSHOT/controllerServlet?submit=Verified+Email&email=" + reader.getEmail();
        
        email.sendEmail(reader.getEmail(), subject, text);
        
        return readerImp.registerReader(reader);
        
    }
    
    @Override
    public User login(User user) {
        
        if (functionsClass.verifyLoginDetails(user, userImp.login(user).getEmail(), userImp.login(user).getPassword())){

            return userImp.login(user);

        }
        
        return null;
        
    }
    
    @Override
    public String editPersonalInfo(User user) {
        return userImp.editPersonalInfo(user);
    }
    
    @Override
    public String followAuthor(Writer writer, User user) {
        return readerImp.followAuthor(writer, user);
    }
    
    @Override
    public ArrayList<Story> getAllFavorites(User user) {
        
        return readerImp.getAllFavorites(user);
    
    }
    
    @Override
    public ArrayList<Story> getReadFavorites(User user) {
        
        return readerImp.getReadFavorites(user);
        
    }
    
    @Override
    public ArrayList<Story> getUnreadFavorites(User user) {
        
        return readerImp.getUnreadFavorites(user);
        
    }
    
    @Override
    public String removeStory(Story story) {
        
        return storyImp.removeStory(story);
        
    }
    
    @Override
    public String privatizeStory(Story story) {
        
        return storyImp.privatizeStory(story);
        
    }
    
    @Override
    public String publiciseStory(Story story) {
        
        return storyImp.publiciseStory(story);
        
    }
    
    @Override
    public String submitStory(Story story) {
        
        return storyImp.submitStory(story);
        
    }
    
    @Override
    public String readStory(Story story, User user) {
        
        return storyImp.readStory(story, user);
        
    }
    
    @Override
    public ArrayList<Story> getPublishedStories(Writer writer) {
        
        return storyImp.getPublishedStories(writer);
        
    }
    
    @Override
    public Story displayStoryDetails(Story story) {
        
        return storyImp.displayStoryDetails(story);
        
    }
    
    @Override
    public Story getPendingStory(Story story) {
        
        return storyImp.getPendingStory(story);
        
    }
    
    @Override
    public String likeStory(Story story, User user) {
        
        return storyImp.likeStory(story, user);
        
    }
    
    @Override
    public String unlikeStory(Story story, User user) {
        
        return storyImp.unlikeStory(story, user);
        
    }
    
    @Override
    public ArrayList<String> search(String topic) {
        
        return userImp.search(topic);
        
    }
    
    @Override
    public String writerRegistration(WriterApplication writerApplication) {
        
        Reader reader = new Reader(writerApplication.getName(),writerApplication.getSurname(),writerApplication.getEmail(),
                writerApplication.getPhoneNumber(),writerApplication.getPassword());
        
        subject = "Writer Registration";
        text = "Your application has been sent and an Editor will review it as soon as possible. During this time you have received reader rights and can browse the platform as a reader";
        email.sendEmail(reader.getEmail(), subject, text);
        return readerImp.registerReader(reader) + writerImp.writerRegistration(writerApplication);
    }
    
    @Override
    public Story getDraft(Story story) {
        
        return writerImp.getDraft(story);
        
    }
    
    
    @Override
    public String editDraft(Story story) {
        
        return writerImp.editDraft(story);
        
    }
    
    @Override 
    public ArrayList<Story> getStoriesFromGenres(User user) {
        
        return readerImp.getStoriesFromGenres(user);
    }
    
    @Override
    public Writer getAuthor(Writer writer) {
        return writerImp.getAuthor(writer);
    }
    
    @Override 
    public String revokeWriterPrivileges(Writer writer)
    {
        
        subject = "Writer Priveleges";
        text = "Because you have failed to follow company policy several times we have decided to remove your writeing priveleges on our platform. \n " +
                "You may still read short stories but may no longer add stories to the platform";
        email.sendEmail(writer.getEmail(), subject, text);
        return editorImp.revokeWriterPrivileges(writer);
    }
    
    @Override
    public List<Editor> viewEditors() {
        
        return adminImp.viewEditors();
        
    }
    
    @Override
    public String applyForWriter(WriterApplication writerApplication) {
        
        subject = "Writer Application";
        text = "Your appliction to be a writer has been sent. Please wait until an editor has reviewed your application until your application status changes";
        email.sendEmail(writerApplication.getEmail(), subject, text);
        return writerImp.writerRegistration(writerApplication);
    }
    @Override
    public String approveWriter(WriterApplication writerApplication) {
        
        subject = "Writer Application";
        text = "Congratualtions! Your writer application has been approved and you are now officially a writer on our platform!" +
                "We welcome you and hope you will contribute many amaing stories to our community that you are now part of!";
        email.sendEmail(writerApplication.getEmail(), subject, text);
        
        return editorImp.approveWriter(writerApplication);
        
    }
    @Override
    public String emailVerification(String email)
    {
        return userImp.emailVerification(email);
    }
}
