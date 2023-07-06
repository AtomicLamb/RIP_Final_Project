package TrialAndError.ReadersAreInnovators.RESTService;

import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.smsreq;
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

import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.xml.bind.JAXB;

import java.io.*;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author matth
 */
public class ImpService 
{
     private Client client;
    private WebTarget webTarget;
    private ObjectMapper mapper;
    private String uri;
    private Response response;
    private String smsUri;
    
     public ImpService(){
        client = ClientBuilder.newClient();
        mapper = new ObjectMapper();
        uri = "http://localhost:8080/Trial_and_Error_Readers_are_Innovators-1.0-SNAPSHOT/ReadersAreInnovators/TrialAndError";
        smsUri = "http://196.41.180.157:8080/sms/sms_request";
    }
    
    public String sms(){
          webTarget = client.target((smsUri));
        String xmlString = null;
        try {
            xmlString = new FunctionsClass().xmlString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        response = webTarget.request(MediaType.APPLICATION_XML).post(Entity.xml(xmlString));
         return response.readEntity(String.class);
    }
    
    
    public User login(User user)
    {
        
        
        String personURI = uri + "/login";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
        return response.readEntity(User.class);
        
    }
    
     public String registerReader(Reader reader)
     {
        String personURI = uri + "/registerReader";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(reader)));
        
        return response.readEntity(String.class);
    }
    public String registerWriter(WriterApplication writerApplication)
    {
        String personURI = uri + "/registerWriter";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writerApplication)));
        
        return response.readEntity(String.class);
    }
    public List<Writer> viewWriters()
        {
            String personURI = uri + "/viewWriters";
            
            webTarget = client.target(personURI);
           response = webTarget.request().get();
            
            try {
                return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class),Writer[].class));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
     public String revokeWriterPrivileges(Writer writer)
         {
            String personURI = uri + "/revokeWriterPrivileges";
            
            webTarget = client.target(personURI);
            response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writer)));
            
            return response.readEntity(String.class);
        }
        public List<Comment> viewFlaggedComments()
                {
                    String personURI = uri + "/viewFlaggedComments";
                    
                    webTarget = client.target(personURI);
                   response = webTarget.request().get();
                    
                    try {
                        return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), Comment[].class));
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
    public String deleteComment(Comment comment)
    {
        String personURI = uri + "/deleteComment";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(comment)));
        
        return response.readEntity(String.class);
    }
    public String unFlagComment(Comment comment)
    {
        String personURI = uri + "/unFlagComment";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(comment)));
        
        return response.readEntity(String.class);
    }
    public String addGenre(Genre genre)
    {
        String personURI = uri + "/addGenre";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(genre)));
        
        return response.readEntity(String.class);
    }
    public String removeGenre(Genre genre)
    {
        String personURI = uri + "/removeGenre";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(genre)));
        
        return response.readEntity(String.class);
    }
    public List<Genre> getGenres()
    {
        String personURI = uri + "/getGenres";
        
        webTarget = client.target(personURI);
        response = webTarget.request().get();
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), Genre[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public String addEditor(Editor editor)
    {
        String personURI = uri + "/addEditor";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(editor)));
        
        return response.readEntity(String.class);
    }
    public String editPersonalInfo(User user)
    {
        String personURI = uri + "/editPersonalInfo";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
        return response.readEntity(String.class);
    }
    public String removeEditor(Editor editor)
    {
        String personURI = uri + "/removeEditor";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(editor)));
        
        return response.readEntity(String.class);
    }
    public User getUser(User user)
    {
        String personURI = uri + "/getUser";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
        return response.readEntity(User.class);
    }
    public List<Editor> viewEditors()
    {
        String personURI = uri + "/viewEditors";
        
        webTarget = client.target(personURI);
        response = webTarget.request().get();
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), Editor[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public String applyForWriter(WriterApplication writerApplication)
    {
        String personURI = uri + "/applyForWriter";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writerApplication)));
        
        return response.readEntity(String.class);
    }
    public String approveWriter(WriterApplication writerApplication)
    {
        String personURI = uri + "/approveWriter";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writerApplication)));
        
        return response.readEntity(String.class);
    }
    public List<WriterApplication> viewWriterApplications()
    {
        String personURI = uri + "/viewWriterApplications";
        
        webTarget = client.target(personURI);
        response = webTarget.request().get();
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), WriterApplication[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public String denyWriter(Writer writer)
    {
        String personURI = uri + "/denyWriter";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writer)));
        
        return response.readEntity(String.class);
    }
    public String emailVerification(String email)
    {
        String personURI = uri + "/emailVerification/{email}";
        
        webTarget = client.target(personURI);
        webTarget = webTarget.resolveTemplate("email",email);
        response = webTarget.request().get();
        
        return response.readEntity(String.class);
    }
    private String toJsonString(Object o)
    {
        try
        {
            return mapper.writeValueAsString(o);
        } catch (JsonProcessingException ex) {
            Logger.getLogger(ImpService.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return null;
    }
    public String selectGenre(UserGenreREST userGenreREST)
    {
        String personURI = uri + "/selectGenre";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(userGenreREST)));
        
        return response.readEntity(String.class);
    }
    public List<Story> getWeeksTopPicks()
    {
        String personURI = uri + "/getWeeksTopPicks";
        
        webTarget = client.target(personURI);
        response = webTarget.request().get();
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), Story[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public List<Story> getRecommendedBooks()
    {
        String personURI = uri + "/getRecommendedBooks";
        
        webTarget = client.target(personURI);
        response = webTarget.request().get();
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), Story[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public List<Story> getStoriesFromGenres(User user)
    {
        String personURI = uri + "/getStoriesFromGenres";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
         return List.of(response.readEntity(Story[].class));
        
    }
    public List<StoryApplication> viewPendingStories()
    {
        String personURI = uri + "/viewPendingStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request().get();
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), StoryApplication[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public StoryApplication reviewPendingStory(StoryApplication storyApplication)
    {
        String personURI = uri + "/reviewPendingStory";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyApplication)));
        
        return response.readEntity(StoryApplication.class);
    }
    public String approvePendingStory(StoryApplicationEditorREST storyApplicationEditorREST)
    {
        String personURI = uri + "/approvePendingStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyApplicationEditorREST)));
        
        return response.readEntity(String.class);
    }
    public String removePendingStory(StoryApplication pendingStory)
    {
        String personURI = uri + "/removePendingStory";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(pendingStory)));
        
        return response.readEntity(String.class);
    }
    public String addGenreToStory(StoryGenreREST storyGenreREST)
    {
        String personURI = uri + "/addGenreToStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyGenreREST)));
        
        return response.readEntity(String.class);
    }
    public Boolean checkRatingExists(Rating rating)
    {
        String personURI = uri + "/checkRatingExists";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(rating)));
        
        return response.readEntity(Boolean.class);
    }
    public String changeRating(Rating rating)
    {
        String personURI = uri + "/changeRating";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(rating)));
        
        return response.readEntity(String.class);
    }
    public String rateStory(Rating rating)
    {
        String personURI = uri + "/rateStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(rating)));
        
        return response.readEntity(String.class);
    }
    public String addComment(Comment comment)
    {
        String personURI = uri + "/addComment";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(comment)));
        
        return response.readEntity(String.class);
    }
    public Boolean checkIfAuthorFollowed(UserWriterREST userWriterREST)
    {
        String personURI = uri + "/checkIfAuthorFollowed";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(userWriterREST)));
        
        return response.readEntity(Boolean.class);
    }
    public String unfollowAuthor(UserWriterREST userWriterREST)
    {
        String personURI = uri + "/unfollowAuthor";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(userWriterREST)));
        
        return response.readEntity(String.class);
    }
    public String followAuthor(UserWriterREST userWriterREST)
    {
        String personURI = uri + "/followAuthor";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(userWriterREST)));
        
        return response.readEntity(String.class);
    }
    public String readStory(StoryUserREST storyUserREST)
    {
        String personURI = uri + "/readStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyUserREST)));
        
        return response.readEntity(String.class);
    }
    public String likeStory(StoryUserREST storyUserREST)
    {
        String personURI = uri + "/likeStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyUserREST)));
        
        return response.readEntity(String.class);
    }
    public Boolean checkIfLiked(StoryUserREST storyUserREST)
    {
        String personURI = uri + "/checkIfLiked";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyUserREST)));
        
        return response.readEntity(Boolean.class);
    }
    public String unlikeStory(StoryUserREST storyUserREST)
    {
        String personURI = uri + "/unlikeStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyUserREST)));
        
        return response.readEntity(String.class);
    }
    public Writer getAuthor(Writer writer)
    {
        String personURI = uri + "/getAuthor";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writer)));
        
        return response.readEntity(Writer.class);
    }
    public Story getDraft(Story story)
    {
        String personURI = uri + "/getDraft";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(Story.class);
    }
    public List<Story> getReadFavorites(User user)
    {
        String personURI = uri + "/getReadFavorites";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> getUnreadFavorites(User user)
    {
        String personURI = uri + "/getUnreadFavorites";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Genre> getUserGenres(User user)
    {
        String personURI = uri + "/getUserGenres";

        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));

        return List.of(response.readEntity(Genre[].class));
    }
    public List<Writer> getFollowedAuthors(User user)
    {
        String personURI = uri + "/getFollowedAuthors";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(user)));
        
        return List.of(response.readEntity(Writer[].class));
    }
    public Story displayStoryDetails(Story story)
    {
        String personURI = uri + "/displayStoryDetails";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));

        return response.readEntity(Story.class);
    }
    public List<Comment> getComments(Story story)
    {
        String personURI = uri + "/getComments";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return List.of(response.readEntity(Comment[].class));
    }
    public List<Story> getPublishedStories(Writer writer)
    {
        String personURI = uri + "/getPublishedStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writer)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> getAllDrafts(Writer writer)
    {
        String personURI = uri + "/getAllDrafts";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(writer)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> searchByTitle(String topic)
    {
        String personURI = uri + "/searchByTitle";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.text(topic));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> searchByAuthor(String topic)
    {
        String personURI = uri + "/searchByAuthor";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.text(topic));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> searchByGenre(String topic)
    {
        String personURI = uri + "/searchByGenre";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.text(topic));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Writer> searchByName(String topic)
    {
        String personURI = uri + "/searchByName";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.text(topic));
        
        return List.of(response.readEntity(Writer[].class));
    }
    public List<Writer> searchByStories(String topic)
    {
        String personURI = uri + "/searchByStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.text(topic));
        
        return List.of(response.readEntity(Writer[].class));
    }
    public List<Story> getMostViewedStories(Analytics analytics)
    {
        String personURI = uri + "/getMostViewedStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> getHighestRatedStories(Analytics analytics)
    {
        String personURI = uri + "/getHighestRatedStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Story> getMostLikedStories(Analytics analytics)
    {
        String personURI = uri + "/getMostLikedStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        return List.of(response.readEntity(Story[].class));
    }
    public List<Genre> getTopGenres(Analytics analytics)
    {
        String personURI = uri + "/getTopGenres";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        return List.of(response.readEntity(Genre[].class));
    }
    public List<Writer> getTopWriters(Analytics analytics)
    {
        String personURI = uri + "/getTopWriters";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        return List.of(response.readEntity(Writer[].class));
    }
    public List<Editor> getTopEditors(Analytics analytics)
    {
        String personURI = uri + "/getTopEditors";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        return List.of(response.readEntity(Editor[].class));
    }
    public String updateDraft(Story story)
    {
        String personURI = uri + "/updateDraft";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(String.class);
    }
    public String deleteDraft(Story story)
    {
        String personURI = uri + "/deleteDraft";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(String.class);
    }
    public String saveAsDraft(Story story)
    {
        String personURI = uri + "/saveAsDraft";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(String.class);
    }
    //Test
    public String addGenreToPendingStory(StoryApplicationGenreREST storyApplicationGenreREST)
    {
        String personURI = uri + "/addGenreToPendingStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(storyApplicationGenreREST)));
        
        return response.readEntity(String.class);
    }
    public String submitStory(Story story)
    {
        String personURI = uri + "/submitStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(String.class);
    }
    public String publiciseStory(Story story)
    {
        String personURI = uri + "/publiciseStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(String.class);
    }
    public String privatizeStory(Story story)
    {
        String personURI = uri + "/privatizeStory";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(story)));
        
        return response.readEntity(String.class);
    }
    //Test
    public String editUserGenres(UserGenreListREST userGenreListREST)
    {
        String personURI = uri + "/editUserGenres";
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(userGenreListREST)));
        
        return response.readEntity(String.class);
    }
}
