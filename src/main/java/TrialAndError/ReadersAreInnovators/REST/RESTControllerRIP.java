package TrialAndError.ReadersAreInnovators.REST;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

@Path("/TrialAndError")
public class RESTControllerRIP {
    
    
    @Path("/login")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public User login(User user) {
        
        
        
        return null;
        
    }
    
    
}