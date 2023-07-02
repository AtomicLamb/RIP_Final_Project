package TrialAndError.ReadersAreInnovators.ServiceLayers;

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

public interface ServiceLayer_Interface {
    
    String saveAsDraft(Story story);
    
    String removePendingStory(StoryApplication pendingStory);
    
    ArrayList<StoryApplication> viewPendingStories();
    
    List<Writer> getFollowedAuthors(User user);
    
    User getUser(User user);
    
    String removeEditor(Editor editor);
    ArrayList<Story> getAllDrafts(Writer writer);
    
    String addEditor(Editor editor);
    
    
    Integer getLikes(Story story);
    
    
    Integer getViews(Story story);
    
    
    Integer getAuthorFollowCount(Writer writer);
    
    
    String addView(Story story);
    
    
    List<Story> getMostViewedStories(Analytics analytics);
    
    
    List<Story> getHighestRatedStories(Analytics analytics);
    
    
    ArrayList<Story> getMostLikedStories(Analytics analytics);
    
    
    ArrayList<Genre> getTopGenres(Analytics analytics);
    
    ArrayList<Writer> getTopWriters(Analytics analytics);
    
    
    ArrayList<Editor> getTopEditors(Analytics analytics);
    
    ArrayList<Story> getStoriesFromGenres(User user);
    String addComment(Comment comment);
    
    
    List<Comment> getComments(Story story);
    
    
    String reportComment(Comment comment);
    
    String deleteComment(Comment comment);
    
    
    String unFlagComment(Comment comment);
    
    List<Comment> viewFlaggedComments();
    
    Integer getNumberOfComments(Story story);
    
    List<WriterApplication> viewWriterApplications();
    
    String denyWriter(Writer writer);
    
    
    List<Writer> viewWriters();
    
    String writerRegistration(WriterApplication writerApplication);
    
    
    String approvePendingStory(StoryApplication story, Editor editor);
    
    
    String denyPendingStory(StoryApplication story, Editor editor);
    
    
    String addGenre(Genre genre);
    
    
    String removeGenre(Genre genre);
    
    
    String selectGenre(User user, Genre genre);
    
    
    String deselectGenre(User user, Genre genre);
    
    
    List<Genre> getGenres();
    
    
    ArrayList<Genre> getUserGenres(User user);
    
    
    Double getStoryRating(Story story);
    
    
    String rateStory(Rating rating);
    
    
    String changeRating(Rating rating);
    
    
    String removeRating(Rating rating);
    
    
    String registerReader(Reader reader);
    
    
    User login(User user);
    
    
    String editPersonalInfo(User user);
    
    
    String followAuthor(Writer writer, User user);
    
    
    ArrayList<Story> getAllFavorites(User user);
    
    
    ArrayList<Story> getReadFavorites(User user);
    
    
    ArrayList<Story> getUnreadFavorites(User user);
    
    
    String removeStory(Story story);
    
    
    String privatizeStory(Story story);
    
    
    String publiciseStory(Story story);
    
    
    String submitStory(Story story);
    
    
    String readStory(Story story, User user);
    
    
    ArrayList<Story> getPublishedStories(Writer writer);
    
    
    Story displayStoryDetails(Story story);
    
    
    StoryApplication reviewPendingStory(StoryApplication storyApplication);
    
    
    List<Genre> getPendingStoryGenres(StoryApplication storyApplication);
    
    String addGenreToStory(Story story, Genre genre);
    
    
    String likeStory(Story story, User user);
    
    
    String unlikeStory(Story story, User user);
    
    
    ArrayList<String> search(String topic);
    
    
    Story getDraft(Story story);
    
    
    String editDraft(Story story);
    
    
    Writer getAuthor(Writer writer);
    
    String revokeWriterPrivileges(Writer writer);
    
    List<Editor> viewEditors();
    
    String applyForWriter(WriterApplication writerApplication);
    
    String approveWriter(WriterApplication writerApplication);
    
    String emailVerification(String email);
    
    String updateDraft(Story story);
    
    String addGenreToPendingStory(StoryApplication storyApplication, Genre genre);
    
    String deleteDraft(Story story);
}
