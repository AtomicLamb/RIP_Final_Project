package TrialAndError.ReadersAreInnovators.ServiceLayers;


import TrialAndError.ReadersAreInnovators.DAOs.*;
import TrialAndError.ReadersAreInnovators.Models.Administration.Email;
import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Analytics;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.RESTModels.*;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;

import java.util.ArrayList;
import java.util.List;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Luaan Robinson.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class ServiceLayerClass implements ServiceLayer_Interface {
    
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
    
    public String unfollowAuthor(UserWriterREST userWriterREST){
        return readerImp.unfollowAuthor(userWriterREST.getWriter(),userWriterREST.getUser());
    }
    
    public Boolean checkIfAuthorFollowed(UserWriterREST userWriterREST)
    {
        return readerImp.checkIfAuthorFollowed(userWriterREST.getUser(),userWriterREST.getWriter());
    }
    
    @Override
    public List<Story> getRecommendedBooks(){
        return readerImp.getRecommendedBooks();
    }
    
    @Override
    public List<Story> getWeeksTopPicks(){
        return readerImp.getWeeksTopPicks();
    }
    
    @Override
    public Boolean checkRatingExists(Rating rating){
        return ratingImp.checkRatingExists(rating);
    }
    
    
    @Override
    public String saveAsDraft(Story story){
        
        return storyImp.saveAsDraft(story);
        
    }
    
    
    @Override
    public String removePendingStory(StoryApplication pendingStory){
        
        subject = "Submitted Story Progress";
        text = "Unfortunately your story does not adhere to the company policy and was rejected. Thank you for taking the time to use our platform.";
        email.sendEmail(pendingStory.getAuthorEmail(), subject, text);
        return editorImp.removePendingStory(pendingStory);
         
    }
    
    
    @Override
    public List<StoryApplication> viewPendingStories(){
     
        return editorImp.viewPendingStories();
        
    }
    
    
    @Override
    public List<Story> getAllDrafts(Writer writer){
        
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
    public List<Story> getMostViewedStories(Analytics analytics) {
        
       return analyticsImp.getMostViewedStories(analytics);
        
    }
    
    
    @Override
    public List<Story> getHighestRatedStories(Analytics analytics) {
        
        return analyticsImp.getHighestRatedStories(analytics);
        
    }
    
    
    @Override
    public List<Story> getMostLikedStories(Analytics analytics) {
        
        return analyticsImp.getMostLikedStories(analytics);
        
    }
    
    @Override
    public List<Genre> getTopGenres(Analytics analytics) {
        
        return analyticsImp.getTopGenres(analytics);
        
    }
    
    @Override
    public List<Writer> getTopWriters(Analytics analytics) {
        
        return analyticsImp.getTopWriters(analytics);
        
    }
    
    @Override
    public List<Editor> getTopEditors(Analytics analytics) {
        
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
    public String denyWriter(WriterApplication writer) {
        
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
    
    
    @Override //TODO Email to SMS
    public String approvePendingStory(StoryApplicationEditorREST storyApplicationEditorREST) {
        
        StoryApplication story = storyApplicationEditorREST.getStoryApplication();
        subject = "Submitted Story Progress";
        text = "Congratulations! Your story has been approved and is now available for anyone to read on the Readers Are Innovators website";
        email.sendEmail(story.getAuthorEmail(), subject, text);
        
        return editorImp.approvePendingStory(story, storyApplicationEditorREST.getEditor());
        
    }
    
    
    
    @Override
    public String addGenre(Genre genre) {
        
        return genresImp.addGenre(genre);   
        
    }
    
    
    @Override
    public String removeGenre(Genre genre) {
        
        return genresImp.removeGenre(genre);
        
    }
    
    
    @Override
    public String selectGenre(UserGenreREST userGenreREST) {
        
        return genresImp.selectGenre(userGenreREST.getUser(),  userGenreREST.getGenre());
    }
    
    
    @Override
    public String deselectGenre(User user, Genre genre) {
        
        return genresImp.deselectGenre(user, genre);
        
    }
    
    
    @Override
    public List<Genre> getGenres() {
        
        return genresImp.getGenres();
        
    }
    
    
    @Override
    public List<Genre> getUserGenres(User user) {
        
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
        String text = "Welcome to the Readers are Innovators Program. '\n''\n'" +
                "You have successfully been registered as a reader. '\n''\n'" +
                "Please click the link below to verify your Email address: '\n''\n'" +
                "http://192.168.0.105:8080/Trial_and_Error_Readers_are_Innovators-1.0-SNAPSHOT/controllerServlet?submit=Verified+Email&email=" + reader.getEmail();
        
        email.sendEmail(reader.getEmail(), subject, text);
        
        return readerImp.registerReader(reader);
        
    }
    
    
    @Override
    public User login(User user) {
        
        User DBUser = userImp.login(user);
        
        if (DBUser==null){
            
            return null;
            
        }
        
        if (functionsClass.verifyLoginDetails(user, DBUser.getEmail(), DBUser.getPassword())){
                
            return userImp.login(user);
                
        }
            
        return null;
        
    }
    
    
    @Override
    public String editPersonalInfo(User user) {
        
        return userImp.editPersonalInfo(user);
        
    }
    
    
    @Override
    public String followAuthor(UserWriterREST userWriterREST) {
        
        return readerImp.followAuthor(userWriterREST.getWriter(), userWriterREST.getUser());
        
    }
    
    @Override
    public List<Story> getReadFavorites(User user) {
        
        return readerImp.getReadFavorites(user);
        
    }
    
    
    @Override
    public List<Story> getUnreadFavorites(User user) {
        
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
    
    public Boolean checkIfLiked(StoryUserREST storyUserREST){
        return storyImp.checkIfLiked(storyUserREST.getStory(),storyUserREST.getUser());
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
    public String readStory(StoryUserREST storyUserREST) {
        
        return storyImp.readStory(storyUserREST.getStory(), storyUserREST.getUser());
        
    }
    
    
    @Override
    public List<Story> getPublishedStories(Writer writer) {
        
        return storyImp.getPublishedStories(writer);
        
    }
    
    
    @Override
    public Story displayStoryDetails(Story story) {
        
        Story storyToDisplay = storyImp.displayStoryDetails(story);
        
        storyToDisplay.setRatingAverage(ratingImp.getStoryRating(story));
        
        return storyToDisplay;
        
    }
    
    
    @Override
    public StoryApplication reviewPendingStory(StoryApplication storyApplication) {
        
        StoryApplication pendingStory = editorImp.reviewPendingStory(storyApplication);
        
        List<Genre> pendingStoryGenres = genresImp.getPendingStoryGenres(storyApplication);
        
        pendingStory.setGenres(pendingStoryGenres);
        
        return pendingStory;
        
    }
    
    
    @Override
    public List<Genre> getPendingStoryGenres(StoryApplication storyApplication){
        
        return genresImp.getPendingStoryGenres(storyApplication);
        
    }
    
    
    @Override
    public String likeStory(StoryUserREST storyUserREST) {
        
        return storyImp.likeStory(storyUserREST.getStory(), storyUserREST.getUser());
        
    }
    
    
    @Override
    public String unlikeStory(StoryUserREST storyUserREST) {
        
        return storyImp.unlikeStory(storyUserREST.getStory(), storyUserREST.getUser());
        
    }
    
    
    @Override
    public List<String> search(String topic) {
        
        return userImp.search(topic);
        
    }
    
    
    @Override
    public String writerRegistration(WriterApplication writerApplication) {
        
        Reader reader = new Reader(writerApplication.getName(),writerApplication.getSurname(),writerApplication.getEmail(),
                writerApplication.getPhoneNumber(),writerApplication.getPassword());
        
        String subject = "Please Verify your Email.";
        String text = "Welcome to the Readers are Innovators Program. \n\n" +
                "You have successfully been registered as a reader. \n\n" +
                "Please click the link below to verify your Email address: \n\n" +
                "http://192.168.0.105:8080/Trial_and_Error_Readers_are_Innovators-1.0-SNAPSHOT/controllerServlet?submit=Verified+Email&email=" + reader.getEmail();
        
        email.sendEmail(reader.getEmail(), subject, text);
        
        subject = "Writer Registration Status.";
        text = "Your application has been sent for reviewal and an Editor of the Readers are Innovators team will review  your application as soon as possible. \n\n" + 
                "During this time you may use the website as a reader and will be notified as soon as your application has been reviewed..";
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
    public List<Story> getStoriesFromGenres(User user) {
        
        return readerImp.getStoriesFromGenres(user);
    }
    
    
    @Override
    public Writer getAuthor(Writer writer) {
        
        return writerImp.getAuthor(writer);
        
    }
    
    
    @Override 
    public String revokeWriterPrivileges(Writer writer) {
        
        subject = "Writer Status Revoked.";
        text = "We regret to inform you that due to your recent behavior you have failed to follow company policy and thus " +
                "we have decided to remove your writing privileges on our platform. \n\n" +
                "You may still access our platform and view short stories but you will not be allowed to create or submit stories to our platform.";
        
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
        text = "Your application to be a writer has been sent. Please wait until an editor has reviewed your application until your application status changes";
        email.sendEmail(writerApplication.getEmail(), subject, text);
        
        return writerImp.writerRegistration(writerApplication);
        
    }
    
    
    @Override
    public String approveWriter(WriterApplication writerApplication) {
        
        subject = "Writer Application";
        text = "Congratulations! Your writer application has been approved and you are now officially a writer on our platform!" +
                "We welcome you and hope you will contribute many amazing stories to our community that you are now part of!";
        email.sendEmail(writerApplication.getEmail(), subject, text);
        
        return editorImp.approveWriter(writerApplication);
        
    }
    
    
    @Override
    public String emailVerification(String email) {
        
        return userImp.emailVerification(email);
        
    }
    
    @Override
    public Boolean referFriend(String phoneNumber) {
        return null;
    }
    
    @Override
    public Story getBookOfTheDay() {
        return null;
    }
    
    
    @Override
    public String updateDraft(Story story) {
        
        return storyImp.updateDraft(story);
        
    }
    
    
    @Override
    public String addGenreToPendingStory(StoryApplication storyApplication, Genre genre) {
        
        return genresImp.addGenreToPendingStory(storyApplication,genre);
        
    }
    
    @Override
    public String removeGenreFromPendingStory(StoryApplication storyApplication, Genre genre) {
        return null;
    }
    
    @Override
    public ArrayList<Genre> getStoryGenres(Story story) {
        return null;
    }
    
    
    @Override
    public String addGenreToStory(StoryGenreREST storyGenreREST) {
        
        return genresImp.addGenreToStory(storyGenreREST.getStory(), storyGenreREST.getGenre());
        
    }
    
    @Override
    public String removeGenreFromStory(Story story, Genre genre) {
        return null;
    }
    
    
    @Override
    public String deleteDraft(Story story) {
        
        return writerImp.deleteDraft(story); 
        
    }
    
    
}
