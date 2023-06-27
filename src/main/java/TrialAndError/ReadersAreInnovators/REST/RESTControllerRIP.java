package TrialAndError.ReadersAreInnovators.REST;

import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
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
    @Path("/registerWriter")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response registerWriter(WriterApplication writerApplication)
    {
        return Response.ok().entity(service.writerRegistration(writerApplication)).build();
    }
    @Path("/viewWriters")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
        public Response viewWriters()
        {
            return Response.ok().entity(service.viewWriters()).build();
        }
    @Path("/revokeWriterPrivileges")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
        public Response revokeWriterPrivileges(Writer writer)
        {
            return Response.ok().entity(service.revokeWriterPrivileges(writer)).build();
        }
     @Path("/viewFlaggedComments")
     @GET
     @Produces(MediaType.APPLICATION_JSON)
            public Response viewFlaggedComments()
            {
                return Response.ok().entity(service.viewFlaggedComments()).build();
            }
    @Path("/deleteComment")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response deleteComment(Comment comment)
    {
        return Response.ok().entity(service.deleteComment(comment)).build();
    }
    @Path("/unFlagComment")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response unFlagComment(Comment comment)
    {
        return Response.ok().entity(service.unFlagComment(comment)).build();
    }
    @Path("/addGenre")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addGenre(Genre genre)
    {
        return Response.ok().entity(service.addGenre(genre)).build();
    }
    @Path("/removeGenre")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response removeGenre(Genre genre)
    {
        return Response.ok().entity(service.removeGenre(genre)).build();
    }
    @Path("/getGenres")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getGenres()
    {
        return Response.ok().entity(service.getGenres()).build();
    }
}