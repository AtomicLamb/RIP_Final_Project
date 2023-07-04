package TrialAndError.ReadersAreInnovators.REST;

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
    public Response login(User user) 
    {
        return Response.ok().entity(service.login(user)).build();
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
    
    @Path("/addEditor")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addEditor(Editor editor)
    {
        return Response.ok().entity(service.addEditor(editor)).build();
    }
    
    @Path("/editPersonalInfo")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response editPersonalInfo(User user)
    {
        return Response.ok().entity(service.editPersonalInfo(user)).build();
    }
    
    @Path("/getUser")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUser(User user)
    {
        return Response.ok().entity(service.getUser(user)).build();
    }
    
    @Path("/removeEditor")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response removeEditor(Editor editor)
    {
        return Response.ok().entity(service.removeEditor(editor)).build();
    }
    
    @Path("/viewEditors")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response viewEditors()
    {
        return Response.ok().entity(service.viewEditors()).build();
    }
    
    @Path("/applyForWriter")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response applyForWriter(WriterApplication writerApplication)
    {
        return Response.ok().entity(service.applyForWriter(writerApplication)).build();
    }
    @Path("/approveWriter")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response approveWriter(WriterApplication writerApplication)
    {
        return Response.ok().entity(service.approveWriter(writerApplication)).build();
    }
    @Path("/viewWriterApplications")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response viewWriterApplications()
    {
        return Response.ok().entity(service.viewWriterApplications()).build();
    }
    
    @Path("/denyWriter")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response denyWriter(WriterApplication writer)
    {
        return Response.ok().entity(service.denyWriter(writer)).build();
    }
    
    @Path("/emailVerification/{email}")
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public Response emailVerification(@PathParam("email") String email)
    {
        return Response.ok().entity(service.emailVerification(email)).build();
    }
    @Path("/getMostViewedStories")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response getMostViewedStories(Analytics analytics)
    {
        return Response.ok().entity(service.getMostViewedStories(analytics)).build();
    }
    @Path("/selectGenre")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response selectGenre(UserGenreREST userGenreREST)
    {
        return Response.ok().entity(service.selectGenre(userGenreREST)).build();
    }
    @Path("/getWeeksTopPicks")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getWeeksTopPicks()
    {
        return Response.ok().entity(service.getWeeksTopPicks()).build();
    }
    @Path("/getRecommendedBooks")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getRecommendedBooks()
    {
        return Response.ok().entity(service.getRecommendedBooks()).build();
    }
    @Path("/getStoriesFromGenres")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getStoriesFromGenres(User user)
    {
        return Response.ok().entity(service.getStoriesFromGenres(user)).build();
    }
    @Path("/viewPendingStories")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response viewPendingStories()
    {
        return Response.ok().entity(service.viewPendingStories()).build();
    }
    @Path("/reviewPendingStory")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response reviewPendingStory(StoryApplication storyApplication)
    {
        return Response.ok().entity(service.reviewPendingStory(storyApplication)).build();
    }
    @Path("/approvePendingStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response approvePendingStory(StoryApplicationEditorREST storyApplicationEditorREST)
    {
        return Response.ok().entity(service.approvePendingStory(storyApplicationEditorREST)).build();
    }
    @Path("/removePendingStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response removePendingStory(StoryApplication pendingStory)
    {
        return Response.ok().entity(service.removePendingStory(pendingStory)).build();
    }
    @Path("/addGenreToStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addGenreToStory(StoryGenreREST storyGenreREST)
    {
        return Response.ok().entity(service.addGenreToStory(storyGenreREST)).build();
    }
    @Path("/checkRatingExists")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response checkRatingExists(Rating rating)
    {
        return Response.ok().entity(service.checkRatingExists(rating)).build();
    }
    @Path("/changeRating")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response changeRating(Rating rating)
    {
        return Response.ok().entity(service.changeRating(rating)).build();
    }
    @Path("/rateStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response rateStory(Rating rating)
    {
        return Response.ok().entity(service.rateStory(rating)).build();
    }
    @Path("/addComment")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addComment(Comment comment)
    {
        return Response.ok().entity(service.addComment(comment)).build();
    }
    @Path("/checkIfAuthorFollowed")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response checkIfAuthorFollowed(UserWriterREST userWriterREST)
    {
        return Response.ok().entity(service.checkIfAuthorFollowed(userWriterREST)).build();
    }
    @Path("/unfollowAuthor")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response unfollowAuthor(UserWriterREST userWriterREST)
    {
        return Response.ok().entity(service.unfollowAuthor(userWriterREST)).build();
    }
    @Path("/followAuthor")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response followAuthor(UserWriterREST userWriterREST)
    {
        return Response.ok().entity(service.followAuthor(userWriterREST)).build();
    }
    @Path("/readStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response readStory(StoryUserREST storyUserREST)
    {
        return Response.ok().entity(service.readStory(storyUserREST)).build();
    }
    @Path("/likeStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response likeStory(StoryUserREST storyUserREST)
    {
        return Response.ok().entity(service.likeStory(storyUserREST)).build();
    }
    @Path("/checkIfLiked")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response checkIfLiked(StoryUserREST storyUserREST)
    {
        return Response.ok().entity(service.checkIfLiked(storyUserREST)).build();
    }
    @Path("/unlikeStory")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response unlikeStory(StoryUserREST storyUserREST)
    {
        return Response.ok().entity(service.unlikeStory(storyUserREST)).build();
    }
    @Path("/getAuthor")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAuthor(Writer writer)
    {
        return Response.ok().entity(service.getAuthor(writer)).build();
    }
    @Path("/getDraft")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getDraft(Story story)
    {
        return Response.ok().entity(service.getDraft(story)).build();
    }
}