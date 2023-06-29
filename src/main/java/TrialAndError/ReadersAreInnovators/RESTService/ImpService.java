package TrialAndError.ReadersAreInnovators.RESTService;

import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Analytics;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.io.IOException;
import java.util.ArrayList;
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
    
     public ImpService(){
        client = ClientBuilder.newClient();
        mapper = new ObjectMapper();
        uri = "http://localhost:8080/Trial_and_Error_Readers_are_Innovators-1.0-SNAPSHOT/ReadersAreInnovators/TrialAndError";
         
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
        response = webTarget.request().post(Entity.json(user));
        
        try {
            return mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), User.class);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
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
    //
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
    public List<Analytics> getMostViewedStories(Analytics analytics)
    {
        String personURI = uri + "/getMostViewedStories";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(analytics)));
        
        try {
            return Arrays.asList(mapper.readValue(webTarget.request().accept(MediaType.APPLICATION_JSON).get(String.class), Analytics[].class));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
