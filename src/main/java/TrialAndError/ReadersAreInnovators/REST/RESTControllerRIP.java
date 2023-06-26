package TrialAndError.ReadersAreInnovators.REST;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/TrialAndError")
public class RESTControllerRIP {
    
    ServiceLayerClass service;
    
    public RESTControllerRIP()
    {
        service = new ServiceLayerClass();
    }
    
    @Path("/login")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public User login(User user) {
        
        
        
        return null;
        
    }
    @Path("/registerReader")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response registerReader(Reader reader)
    {
        return Response.ok().entity(service.registerReader(reader)).build();
    }
    
    
}