package TrialAndError.ReadersAreInnovators.Testing;

import TrialAndError.ReadersAreInnovators.DAOs.*;
import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Analytics;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.*;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import org.junit.Test;
import java.io.*;
import java.util.List;


/**
 * @Desctripion:    The J-Unit Testing Class.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class JUnitTesting {
    
    
    AdminEditorImplementation adminImp = new AdminEditorImplementation();
    AnalyticsImplementation analyticsImp = new AnalyticsImplementation();
    CommentImplementation commentsImp = new CommentImplementation();
    EditorImplementation editorImp = new EditorImplementation();
    GenresImplementation genresImp = new GenresImplementation();
    StoryImplementation storyImp = new StoryImplementation();
    RatingImplementation ratingImp = new RatingImplementation();
    ReaderImplementation readerImp = new ReaderImplementation();
    WriterImplementation writerImp = new WriterImplementation();
    UserImplementation userImp = new UserImplementation();
    
    
    
    //Admin-Editor Tests: Done.
    
    @Test
    public void removeEditorTest(){
        
        Editor editor = new Editor();
        
        System.out.println(adminImp.removeEditor(editor));
        
    }
    
    @Test
    public void addEditorTest(){
        
        Editor editor = new Editor();
        
        System.out.println(adminImp.addEditor(editor));
        
    }
    
    
    
    //Analytics Tests:
    
    @Test
    public void getLikesTest(){
        
        Story story = new Story();
        
        System.out.println(analyticsImp.getLikes(story));
        
    }
    
    @Test
    public void getViewsTest(){
        
        Story story = new Story();
        
        System.out.println(analyticsImp.getViews(story));
        
    }
    
    @Test
    public void getAuthorFollowCountTest(){
        
        Writer writer = new Writer();
        
        System.out.println(analyticsImp.getAuthorFollowCount(writer));
        
    }
    
    @Test
    public void getMostViewedStoriesTest(){
        
        Analytics analytics = new Analytics();
        
        List<Story> mostViewed = analyticsImp.getMostViewedStories(analytics);
        
        for (Story s: mostViewed) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getHighestRatedStoriesTest(){
        
        Analytics analytics = new Analytics();
        
        List<Story> highestRated = analyticsImp.getHighestRatedStories(analytics);
        
        for (Story s: highestRated) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getMostLikedStoriesTest(){
        
        Analytics analytics = new Analytics();
        
        List<Story> mostLiked = analyticsImp.getMostLikedStories(analytics);
        
        for (Story s: mostLiked) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getTopGenresTest(){
        
        Analytics analytics = new Analytics();
        
        List<Genre> topGenres = analyticsImp.getTopGenres(analytics);
        
        for (Genre g: topGenres) {
            
            System.out.println(g);
            
        }
        
    }
    
    @Test
    public void getTopWritersTest(){
        
        Analytics analytics = new Analytics();
        
        List<Writer> topWriters = analyticsImp.getTopWriters(analytics);
        
        for (Writer w: topWriters) {
            
            System.out.println(w);
            
        }
        
    }
    
    @Test
    public void getTopEditorsTest(){
        
        Analytics analytics = new Analytics();
        
        List<Editor> topEditors = analyticsImp.getTopEditors(analytics);
        
        for (Editor e: topEditors) {
            
            System.out.println(e);
            
        }
        
    }
    
    
    
    //Comments Tests:
    
    @Test
    public void addCommentTest(){
        
        Comment comment = new Comment(1, 34, "Testing comment in JUnit");
        
        System.out.println(commentsImp.addComment(comment));
        
    }
    
    @Test
    public void getCommentsTest(){
        
        Story story = new Story();
        
        List<Comment> testComments =  commentsImp.getComments(story);
        
        for (Comment c:testComments) {
            
            System.out.println(c);
            
        }
        
    }
    
    @Test
    public void reportCommentTest(){
        
        Comment comment = new Comment();
        
        System.out.println(commentsImp.reportComment(comment));
        
    }
    
    @Test
    public void deleteCommentTest(){
        
        Comment comment = new Comment();
        
        System.out.println(commentsImp.deleteComment(comment));
        
    }
    
    @Test
    public void unFlagCommentTest(){
        
        Comment comment = new Comment();
        
        System.out.println(commentsImp.unFlagComment(comment));
        
    }
    
    @Test
    public void getNumberOfCommentsTest(){
        
        Story story = new Story();
        
        System.out.println(commentsImp.getNumberOfComments(story));
        
    }
    
    
    
    //Editors Tests:
    
    @Test
    public void viewWriterApplicationsTest(){
        
        List<WriterApplication> pendingWriters = editorImp.viewWriterApplications();
        
        for (WriterApplication wa: pendingWriters) {
            
            System.out.println(wa);
            
        }
        
    }
    
    @Test
    public void approveWriter(){
        
        WriterApplication writerApplication = new WriterApplication();
        
        System.out.println(editorImp.approveWriter(writerApplication));
        
    }
    
    @Test
    public void denyWriterTest(){
        
        WriterApplication writerApplication = new WriterApplication();
        
        System.out.println(editorImp.approveWriter(writerApplication));
        
    }
    
    @Test
    public void viewWritersTest(){
        
        List<Writer> allWriters = editorImp.viewWriters();
        
        for (Writer w: allWriters) {
            
            System.out.println(w);
            
        }
        
    }
    
    @Test
    public void approvePendingStoryTest(){
        
        Editor editor = new Editor(135);
        StoryApplication storyApplication = new StoryApplication(42, "stuff you.", 36, "marna@gmail.com", "0116668888", "Stuff.", "Lots of stuff", null, false, null);
        
        System.out.println(editorImp.approvePendingStory(storyApplication, editor));

    }

    @Test
    public void denyPendingStoryTest(){
        
        StoryApplication storyApplication = new StoryApplication();
        
        System.out.println(editorImp.removePendingStory(storyApplication));

    }

    @Test
    public void viewPendingStoriesTest(){

        System.out.println(editorImp.viewPendingStories());

    }

    @Test
    public void reviewPendingStoryTest(){
        
        StoryApplication storyApplication = new StoryApplication();

        System.out.println(editorImp.reviewPendingStory(storyApplication));

    }

    @Test
    public void revokeWriterPrivilegesTest(){

        Writer writer = new Writer();
        
        System.out.println(editorImp.revokeWriterPrivileges(writer));

    }



    //Genres Tests:

    @Test
    public void addGenreTest(){
        
        Genre genre = new Genre();

        System.out.println(genresImp.addGenre(genre));

    }

    @Test
    public void removeGenreTest(){
        
        Genre genre = new Genre();

        System.out.println(genresImp.removeGenre(genre));

    }

    @Test
    public void selectGenreTest(){
        
        User user = new User();
        Genre genre = new Genre();

        System.out.println(genresImp.selectGenre(user, genre));

    }

    @Test
    public void deselectGenreTest(){
        
        User user = new User();
        Genre genre = new Genre();
        
        System.out.println(genresImp.deselectGenre(user, genre));

    }

    @Test
    public void getGenresTest(){

        List<Genre> allGenres = genresImp.getGenres();
        
        for (Genre g:allGenres) {

            System.out.println(g);

        }

    }
    
    @Test
    public void getPendingStoryGenresTest() {
        
        StoryApplication storyApplication = new StoryApplication(20);
        
        List<Genre> pendingStoryGenres = genresImp.getPendingStoryGenres(storyApplication);
        
        for (Genre g : pendingStoryGenres) {
            
            System.out.println(g);
            
        }
        
    }

    @Test
    public void getUserGenresTest(){
        
        User user = new User();
        
        List<Genre> userGenres = genresImp.getUserGenres(user);
        
        for (Genre g:userGenres) {

            System.out.println(g);

        }

    }



    //Rating Tests:

    @Test
    public void getStoryRatingTest(){

        Story story = new Story();
        
        System.out.println(ratingImp.getStoryRating(story));

    }

    @Test
    public void rateStoryTest(){
        
        Rating rating = new Rating(34, 61, 5);

        System.out.println(ratingImp.rateStory(rating));

    }

    @Test
    public void changeRatingTest(){
        
        Rating rating = new Rating();

        System.out.println(ratingImp.changeRating(rating));

    }

    @Test
    public void removeRatingTest(){
        
        Rating rating = new Rating();

        System.out.println(ratingImp.removeRating(rating));

    }



    //Readers Tests:

    @Test
    public void registerReaderTest(){
        
        Reader reader = new Reader();

        System.out.println(readerImp.registerReader(reader));

    }

    @Test
    public void followAuthorTest(){
        
        Writer writer = new Writer();
        User user = new User();

        System.out.println(readerImp.followAuthor(writer, user));

    }

    @Test
    public void unfollowAuthorTest(){
        
        Writer writer = new Writer();
        User user = new User();

        System.out.println(readerImp.unfollowAuthor(writer, user));

    }

    @Test
    public void getFollowedAuthorsTest(){
        
        User user = new User();

        List<Writer> followedWriters = readerImp.getFollowedAuthors(user);
        
        for (Writer w: followedWriters) {

            System.out.println(w);

        }

    }

    @Test
    public void getReadFavoritesTest(){
        
        User user = new User(36);

        List<Story> readFavorites = readerImp.getReadFavorites(user);
        
        for (Story s: readFavorites) {

            System.out.println(s);

        }

    }

    @Test
    public void getUnreadFavoritesTest(){
        
        User user = new User(36);

        List<Story> unreadFavorites = readerImp.getUnreadFavorites(user);
        
        for (Story s: unreadFavorites) {

            System.out.println(s);

        }

    }



    //Story Tests:

    @Test
    public void removeStoryTest(){
        
        Story story = new Story();

        System.out.println(storyImp.removeStory(story));

    }

    @Test
    public void privatizeStoryTest(){
        
        Story story = new Story();

        System.out.println(storyImp.privatizeStory(story));

    }

    @Test
    public void publiciseStoryTest(){
        
        Story story = new Story();

        System.out.println(storyImp.publiciseStory(story));

    }

    @Test
    public void submitStoryTest(){

        //TODO

    }

    @Test
    public void readStoryTest(){

        //TODO

    }

    @Test
    public void getPublishedStoriesTest(){

        //TODO

    }



    @Test
    public void displayStoryDetailsTest(){

        //TODO

    }

    @Test
    public void saveAsDraftTest(){

        InputStream inputStream = null;

        try {

            inputStream = new FileInputStream(new File(""));

            FunctionsClass functionsClass = new FunctionsClass();

            String image64 = functionsClass.encodeBase64(inputStream);

            Story myTestStory = new Story("Image Test 3 the return of the cum sock 4", 52, "The story body to test images is epic of boring its mid and not very boring. Until one day the all mighty and all powerful cum sock came to life, empowered by the success of the RIP program developed by Trial and Error.", "An up and cumming success story.", image64, true);

            System.out.println(storyImp.saveAsDraft(myTestStory));

        } catch (FileNotFoundException e) {

            throw new RuntimeException(e);

        } finally {

            try {

                inputStream.close();

            } catch (IOException e) {

                throw new RuntimeException(e);

            }

        }

    }
    
    @Test
    public void updateDraftTest(){
        
        Story draft = new Story("Image Test",52,"The goats are in the house","The goats","",true);
        
        System.out.println(storyImp.updateDraft(draft));
        
    }

    @Test
    public void likeStoryTest(){

        //TODO

    }

    @Test
    public void unlikeStoryTest(){

        //TODO

    }



    //User Tests:

    @Test
    public void searchTest(){
        
        String searchTopic = "Test";

        List<String> searchResults = userImp.search(searchTopic);
        for (String s:searchResults) {

            System.out.println(s);

        }

    }

    @Test
    public void loginTest(){
        
        User user = new User("ex@gmail.com", "hi");

        System.out.println(userImp.login(user));

    }

    @Test
    public void editPersonalInfoTest(){

        Reader reader = new Reader();
        
        System.out.println(userImp.editPersonalInfo(reader));

    }

    @Test
    public void emailVerificationTest(){

        System.out.println(userImp.emailVerification("tksrex@gmail.com"));

    }



    //Writer Tests:

    @Test
    public void getDraftTest(){
        
        Story story = new Story();

        System.out.println(writerImp.getDraft(story));

    }

    @Test
    public void getAllDraftsTest(){
        
        Writer writer = new Writer();

        List<Story> userDrafts = writerImp.getAllDrafts(writer);
        
        for (Story s: userDrafts) {

            System.out.println(s);

        }

    }

    @Test
    public void writerRegistrationTest(){
        
        WriterApplication writerApplication = new WriterApplication();

        System.out.println(writerImp.writerRegistration(writerApplication));

    }

    @Test
    public void editDraftTest(){
        
        Story story = new Story();

        System.out.println(writerImp.editDraft(story));

    }

    @Test
    public void getAuthorTest(){
        
        Writer writer = new Writer();

        System.out.println(writerImp.getAuthor(writer));

    }
    
    
}
