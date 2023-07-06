package TrialAndError.ReadersAreInnovators.Models.Administration;

import okhttp3.*;
import java.io.IOException;

public class SMS {
    
    static String phoneNumber;
    static String text;
    public String RECIPIENT;
    public static String MESSAGE_TEXT;
    
    void publicSendSMS(String RECIPIENT, String MESSAGE_TEXT){
        
        this.RECIPIENT = RECIPIENT;
        this.MESSAGE_TEXT = MESSAGE_TEXT;
        
    }
    
    private static final String BASE_URL = "https://2kw8rm.api.infobip.com";
    private static final String API_KEY = "App ec318ba0170be21d17be93c839a79480-2a0a9f83-5d9e-4f9a-b3cc-9642ff4a4701";
    private static final String MEDIA_TYPE = "application/json";
    
    private static final String SENDER = "Harpe";
    
    public String sendSMS() {
        
        OkHttpClient client = new OkHttpClient().newBuilder().build();
        
        String bodyJson = String.format("{\"messages\":[{\"from\":\"%s\",\"destinations\":[{\"to\":\"%s\"}],\"text\":\"%s\"}]}",
                SENDER,
                RECIPIENT,
                MESSAGE_TEXT
        );
        
        MediaType mediaType = MediaType.parse(MEDIA_TYPE);
        RequestBody body = RequestBody.create(mediaType, bodyJson);
        
        Request request = prepareHttpRequest(body);
        Response response = null;
        
        try {
            
            response = client.newCall(request).execute();
            
        } catch (IOException e) {
            
            e.printStackTrace();
            
        }
        
        System.out.println("HTTP status code: " + response.code());
        
        try {
            
            System.out.println("Response body: " + response.body().string());
            
        } catch (IOException e) {
            
            e.printStackTrace();
            
        }
        
        return "Message Successfully Sent";
        
    }
    
    private static Request prepareHttpRequest(RequestBody body) {
        
        return new Request.Builder()
                .url(String.format("%s/sms/2/text/advanced", BASE_URL))
                .method("POST", body)
                .addHeader("Authorization", API_KEY)
                .addHeader("Content-Type", MEDIA_TYPE)
                .addHeader("Accept", MEDIA_TYPE)
                .build();
        
    }
    
    
}
    
