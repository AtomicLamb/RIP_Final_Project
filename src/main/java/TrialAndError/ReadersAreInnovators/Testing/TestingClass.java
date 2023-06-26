package TrialAndError.ReadersAreInnovators.Testing;

import TrialAndError.ReadersAreInnovators.DAOs.*;

import java.io.File;

public class TestingClass {
    
    
    AdminEditorImplementation adminImp;
    AnalyticsImplementation analyticsImp;
    CommentImplementation commentImp;
    EditorImplementation editorImp;
    GenresImplementation genresImp;
    RatingImplementation ratingImp;
    ReaderImplementation readerImp;
    StoryImplementation storyImp;
    WriterImplementation writerImp;
    UserImplementation userImp;
    
    File img = new File("C:\\Users\\TKS\\Desktop\\VZAP Project\\default_book_cover_2015.jpg");
    
    
    public TestingClass() {
        
        this.adminImp = new AdminEditorImplementation();
        this.analyticsImp = new AnalyticsImplementation();
        this.commentImp = new CommentImplementation();
        this.editorImp = new EditorImplementation();
        this.genresImp = new GenresImplementation();
        this.storyImp = new StoryImplementation();
        this.ratingImp = new RatingImplementation();
        this.readerImp = new ReaderImplementation();
        this.writerImp = new WriterImplementation();
        this.userImp = new UserImplementation();
        
    }
    
    
    public static void main(String[] args) {
        
        System.out.println("Hello there..." + "\n");
        TestingClass tb = new TestingClass();
        tb.test1();
        tb.test2();
        
    }
    
    
    public void test1()
    {
       
    }
    
    
    public void test2(){
        
    }
    
    
}
