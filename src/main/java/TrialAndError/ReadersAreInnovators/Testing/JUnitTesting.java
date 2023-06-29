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
import org.codehaus.jackson.annotate.JsonIgnoreType;
import org.junit.Test;

import java.io.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

/**
 * @desctripion:    Class made for JUnit testing of DOA methods.
 * @author:         Tyler Schwegler.
 * @Version:        v.1.0.0
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
    
    
    Base64 image = null;
    String searchTopic = "Cat";
    
    
    User user = new User(32, "User", "Test", "user.test@gmail.com", "011555000", "User1", 0, "User", false, false, 0);
    Reader reader = new Reader(56, "Reader", "Test", "reader.test@gmail.com", "0115550000", "Reader1", 1, "Reader", false, false);
    Writer writer = new Writer(52, "Writer", "Test", "writer.test@gmail.com", "0116660000", "Writer1", 2, "Writer", false, false);
    WriterApplication writerApplication = new WriterApplication("Test", "Application", "writerapp.test@gmail.com", "0117770000", "Test", "2023-06-23");
    Editor editor = new Editor("Editor", "Test", "editor23.test@gmail.com", "0114580000", "Editor1");
    AdminEditor adminEditor = new AdminEditor();
    
    
    Comment comment = new Comment(9, 17, 51, "Reader", "Test Comment", "2022/06/23");
    Genre genre = new Genre(15, "Test");
    Story story = new Story(5, "TestStory", 52, 0, 0, 0.0, "", "This is a Story for Testing", "To Test", "C:\\Users\\TKS\\IdeaProjects\\Trial and Error - Readers are Innovators\\src\\main\\resources\\images\\Default Book Cover.jpg", false, "2022/06/23", 49);
    StoryApplication pendingStory = new StoryApplication(1, 29);
    Story draft = new Story(2, "Test", 16, "Testing Drafts", "", "Draft test", "C:\\Users\\TKS\\IdeaProjects\\Trial and Error - Readers are Innovators\\src\\main\\resources\\images\\Default Book Cover.jpg", true);
    
    
    Analytics analytics = new Analytics(5, "2023-05-01", "2023-07-01");
    Rating rating1 = new Rating(51, 17, 4);
    Rating rating2 = new Rating(51, 17, 5);
    
    
    
    
    //Admin-Editor Tests: Done.
    
    @Test
    public void removeEditorTest(){
        
        System.out.println(adminImp.removeEditor(editor));
        
    }
    
    @Test
    public void addEditorTest(){
        
        System.out.println(adminImp.addEditor(editor));
        
    }
    
    
    
    //Analytics Tests:
    
    @Test
    public void getLikesTest(){
        
        System.out.println(analyticsImp.getLikes(story));
        
    }
    
    @Test
    public void getViewsTest(){
        
        System.out.println(analyticsImp.getViews(story));
        
    }
    
    @Test
    public void getAuthorFollowCountTest(){
        
        System.out.println(analyticsImp.getAuthorFollowCount(writer));
        
    }
    
    @Test
    public void addViewTest(){
        
        System.out.println(analyticsImp.addView(story));
        
    }
    
    @Test
    public void addLikeTest(){
        
        System.out.println(analyticsImp.addLike(story));
        
    }
    
    @Test
    public void removeLikeTest(){
        
        System.out.println(analyticsImp.removeLike(story));
        
    }
    
    @Test
    public void getMostViewedStoriesTest(){
        
        List<Story> mostViewed = analyticsImp.getMostViewedStories(analytics);
        
        for (Story s: mostViewed) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getHighestRatedStoriesTest(){
        
        List<Story> highestRated = analyticsImp.getHighestRatedStories(analytics);
        
        for (Story s: highestRated) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getMostLikedStoriesTest(){
        
        ArrayList<Story> mostLiked = analyticsImp.getMostLikedStories(analytics);
        
        for (Story s: mostLiked) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getTopGenresTest(){
        
        ArrayList<Genre> topGenres = analyticsImp.getTopGenres(analytics);
        
        for (Genre g: topGenres) {
            
            System.out.println(g);
            
        }
        
    }
    
    @Test
    public void getTopWritersTest(){
        
        ArrayList<Writer> topWriters = analyticsImp.getTopWriters(analytics);
        
        for (Writer w: topWriters) {
            
            System.out.println(w);
            
        }
        
    }
    
    @Test
    public void getTopEditorsTest(){
        
        ArrayList<Editor> topEditors = analyticsImp.getTopEditors(analytics);
        
        for (Editor e: topEditors) {
            
            System.out.println(e);
            
        }
        
    }
    
    
    
    //Comments Tests:
    
    @Test
    public void addCommentTest(){
        
        System.out.println(commentsImp.addComment(comment));
        
    }
    
    @Test
    public void getCommentsTest(){
        
        ArrayList<Comment> testComments =  commentsImp.getComments(story);
        for (Comment c:testComments) {
            
            System.out.println(c);
            
        }
        
    }
    
    @Test
    public void reportCommentTest(){
        
        System.out.println(commentsImp.reportComment(comment));
        
    }
    
    @Test
    public void deleteCommentTest(){
        
        System.out.println(commentsImp.deleteComment(comment));
        
    }
    
    @Test
    public void unFlagCommentTest(){
        
        System.out.println(commentsImp.unFlagComment(comment));
        
    }
    
    @Test
    public void getNumberOfCommentsTest(){
        
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
        
        System.out.println(editorImp.approveWriter(writerApplication));
        
    }
    
    @Test
    public void denyWriterTest(){
        
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
        
        System.out.println(editorImp.approvePendingStory(pendingStory, editor));
        
    }
    
    @Test
    public void denyPendingStoryTest(){
        
        System.out.println(editorImp.removePendingStory(pendingStory));
        
    }
    
    @Test
    public void viewPendingStoriesTest(){
        
        System.out.println(editorImp.viewPendingStories());
        
    }
    
    @Test
    public void reviewPendingStoryTest(){
        
        System.out.println(editorImp.reviewPendingStory(pendingStory));
        
    }
    
    @Test
    public void revokeWriterPrivilegesTest(){
        
        System.out.println(editorImp.revokeWriterPrivileges(writer));
        
    }
    
    
    
    //Genres Tests:
    
    @Test
    public void addGenreTest(){
        
        System.out.println(genresImp.addGenre(genre));
        
    }
    
    @Test
    public void removeGenreTest(){
        
        System.out.println(genresImp.removeGenre(genre));
        
    }
    
    @Test
    public void selectGenreTest(){
        
        System.out.println(genresImp.selectGenre(user, genre));
        
    }
    
    @Test
    public void deselectGenreTest(){
        
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
    public void getUserGenresTest(){
        
        ArrayList<Genre> userGenres = genresImp.getUserGenres(user);
        for (Genre g:userGenres) {
            
            System.out.println(g);
            
        }
        
    }
    
    
    
    //Rating Tests:
    
    @Test
    public void getStoryRatingTest(){
        
        System.out.println(ratingImp.getStoryRating(story));
        
    }
    
    @Test
    public void rateStoryTest(){
        
        System.out.println(ratingImp.rateStory(rating1));
        
    }
    
    @Test
    public void changeRatingTest(){
        
        System.out.println(ratingImp.changeRating(rating2));
        
    }
    
    @Test
    public void removeRatingTest(){
        
        System.out.println(ratingImp.removeRating(rating1));
        
    }
    
    
    
    //Readers Tests:
    
    @Test
    public void registerReaderTest(){
        
        System.out.println(readerImp.registerReader(reader));
        
    }
    
    @Test
    public void followAuthorTest(){
        
        System.out.println(readerImp.followAuthor(writer, user));
        
    }
    
    @Test
    public void unfollowAuthorTest(){
        
        System.out.println(readerImp.unfollowAuthor(writer, user));
        
    }
    
    @Test
    public void getFollowedAuthorsTest(){
        
        ArrayList<Writer> followedWriters = readerImp.getFollowedAuthors(user);
        for (Writer w: followedWriters) {
            
            System.out.println(w);
            
        }
        
    }
    
    @Test
    public void getAllFavoritesTest(){
        
        ArrayList<Story> allFavorites = readerImp.getAllFavorites(user);
        for (Story s: allFavorites) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getReadFavoritesTest(){
        
        ArrayList<Story> readFavorites = readerImp.getReadFavorites(user);
        for (Story s: readFavorites) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void getUnreadFavoritesTest(){
        
        ArrayList<Story> unreadFavorites = readerImp.getUnreadFavorites(user);
        for (Story s: unreadFavorites) {
            
            System.out.println(s);
            
        }
        
    }
    
    
    
    //Story Tests:
    
    @Test
    public void removeStoryTest(){
        
        System.out.println(storyImp.removeStory(new Story(12, "sgs")));
        
    }
    
    @Test
    public void privatizeStoryTest(){
        
        System.out.println(storyImp.privatizeStory(story));
        
    }
    
    @Test
    public void publiciseStoryTest(){
        
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
            
            inputStream = new FileInputStream(new File("C:\\Users\\TKS\\Desktop\\success.jpg"));
            
            FunctionsClass functionsClass = new FunctionsClass();
            
            String image64 = functionsClass.encodeBase64(inputStream);
            
            Story myTestStory = new Story("Image Test 2 the return of the cum sock", 52, "The story body to test images is very boring. Until one day the all mighty and all powerful cum sock came to life, empowered by the success of the RIP program developed by Trial and Error.", "An up and cumming success story.", image64, true);
            
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
    public void getPendingStoryTest(){
        
        //TODO
        
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
        
        ArrayList<String> searchResults = userImp.search(searchTopic);
        for (String s:searchResults) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void loginTest(){
        
        System.out.println(userImp.login(new User("tksrex@gmail.com", "awesome123")));
        
    }
    
    @Test
    public void editPersonalInfoTest(){
        
        System.out.println(userImp.editPersonalInfo(reader));
        
    }
    
    @Test
    public void emailVerificationTest(){
        
        System.out.println(userImp.emailVerification("tksrex@gmail.com"));
        
    }
    
    
    
    //Writer Tests:
    
    @Test
    public void getDraftTest(){
        
        System.out.println(writerImp.getDraft(draft));
        
    }
    
    @Test
    public void getAllDraftsTest(){
        
        ArrayList<Story> userDrafts = writerImp.getAllDrafts(new Writer(16));
        for (Story s: userDrafts) {
            
            System.out.println(s);
            
        }
        
    }
    
    @Test
    public void writerRegistrationTest(){
        
        System.out.println(writerImp.writerRegistration(writerApplication));
        
    }
    
    @Test
    public void editDraftTest(){
        
        System.out.println(writerImp.editDraft(draft));
        
    }
    
    @Test
    public void getAuthorTest(){
        
        System.out.println(writerImp.getAuthor(writer));
        
    }
    
    
}
