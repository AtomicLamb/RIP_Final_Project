package TrialAndError.ReadersAreInnovators.ServiceLayers;

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
 * @Desctripion:    The Service Layer Interface of the system.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public interface ServiceLayer_Interface {
    
    
    
    //Admin-Editor:
    
    List<Editor> viewEditors();
    
    String removeEditor(Editor editor);
    
    String addEditor(Editor editor);
    
    
    
    //Analytics:
    
    Integer getLikes(Story story);
    
    Integer getViews(Story story);
    
    Integer getAuthorFollowCount(Writer writer);
    
    List<Story> getMostViewedStories(Analytics analytics);
    
    List<Story> getHighestRatedStories(Analytics analytics);
    
    List<Story> getMostLikedStories(Analytics analytics);
    
    List<Genre> getTopGenres(Analytics analytics);
    
    List<Writer> getTopWriters(Analytics analytics);
    
    List<Editor> getTopEditors(Analytics analytics);
    
    
    
    //Comment:
    
    String addComment(Comment comment);
    
    List<Comment> getComments(Story story);
    
    String reportComment(Comment comment);
    
    String deleteComment(Comment comment);
    
    String unFlagComment(Comment comment);
    
    List<Comment> viewFlaggedComments();
    
    Integer getNumberOfComments(Story story);
    
    
    
    //Editor:
    
    List<WriterApplication> viewWriterApplications();
    
    String approveWriter(WriterApplication writerApplication);
    
    String denyWriter(WriterApplication writer);
    
    List<Writer> viewWriters();
    
    String approvePendingStory(StoryApplicationEditorREST storyApplicationEditorREST);
    
    String removePendingStory(StoryApplication pendingStory);
    
    StoryApplication reviewPendingStory(StoryApplication storyApplication);
    
    List<StoryApplication> viewPendingStories();
    
    String revokeWriterPrivileges(Writer writer);
    
    
    
    //Genre:
    
    String addGenre(Genre genre);
    
    String removeGenre(Genre genre);
    
    String selectGenre(UserGenreREST userGenreREST);
    
    String deselectGenre(User user, Genre genre);
    
    List<Genre> getGenres();
    
    List<Genre> getUserGenres(User user);
    
    String addGenreToStory(StoryGenreREST storyGenreREST);
    
    String removeGenreFromStory(Story story, Genre genre);
    
    String addGenreToPendingStory(StoryApplication storyApplication, Genre genre);
    
    String removeGenreFromPendingStory(StoryApplication storyApplication, Genre genre);
    
    ArrayList<Genre> getStoryGenres(Story story);
    
    List<Genre> getPendingStoryGenres(StoryApplication storyApplication);
    
    
    
    //Rating:
    
    Double getStoryRating(Story story);
    
    String rateStory(Rating rating);
    
    String changeRating(Rating rating);
    
    String removeRating(Rating rating);
    
    Boolean checkRatingExists(Rating rating);
    
    
    
    //Reader:
    
    String registerReader(Reader reader);
    
    String followAuthor(UserWriterREST userWriterREST);
    
    String unfollowAuthor(UserWriterREST userWriterREST);
    
    Boolean checkIfAuthorFollowed(UserWriterREST userWriterREST);
    
    List<Writer> getFollowedAuthors(User user);
    
    List<Story> getStoriesFromGenres(User user);
    
    List<Story> getWeeksTopPicks();
    
    List<Story> getRecommendedBooks();
    
    List<Story> getReadFavorites(User user);
    
    List<Story> getUnreadFavorites(User user);
    
    
    
    //Story:
    
    String removeStory(Story story);
    
    String privatizeStory(Story story);
    
    String publiciseStory(Story story);
    
    String submitStory(Story story);
    
    String readStory(StoryUserREST storyUserREST);
    
    List<Story> getPublishedStories(Writer writer);
    
    Story displayStoryDetails(Story story);
    
    String saveAsDraft(Story story);
    
    String updateDraft(Story story);
    
    String likeStory(StoryUserREST storyUserREST);
    
    String unlikeStory(StoryUserREST storyUserREST);
    
    Boolean checkIfLiked(StoryUserREST storyUserREST);
    
    
    
    //User:
    
    List<Story> searchByTitle(String topic);
    
    List<Story> searchByAuthor(String topic);
    
    List<Story> searchByGenre(String topic);
    
    List<Writer> searchByName(String topic);
    
    List<Writer> searchByStories(String topic);
    
    User getUser(User user);
    
    User login(User user);
    
    String editPersonalInfo(User user);
    
    String emailVerification(String email);
    
    String referFriend(String phoneNumber, String name);
    
    Story getBookOfTheDay();
    
    
    
    //Writer:
    
    String writerRegistration(WriterApplication writerApplication);
    
    Story getDraft(Story story);
    
    List<Story> getAllDrafts(Writer writer);
    
    String deleteDraft(Story story);
    
    String editDraft(Story story);
    
    Writer getAuthor(Writer writer);
    
    
    
    //Other:
    
    String applyForWriter(WriterApplication writerApplication);
    
    String forgotPassword(User user);
    
    
}
