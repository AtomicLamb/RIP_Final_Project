package TrialAndError.ReadersAreInnovators.RESTService;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
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
     public String registerReader(Reader reader)
     {
        String personURI = uri + "/registerReader";
        
        webTarget = client.target(personURI);
        response = webTarget.request(MediaType.APPLICATION_JSON).post(Entity.json(toJsonString(reader)));
        
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
}
