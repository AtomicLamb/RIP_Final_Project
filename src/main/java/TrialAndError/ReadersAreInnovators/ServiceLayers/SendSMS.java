//package TrialAndError.ReadersAreInnovators.ServiceLayers;
//import okhttp3.*;
//
//import java.io.IOException;
//
//public class SendSMS{
//
//    private static final String BASE_URL = "https://2kw8rm.api.infobip.com";
//    private static final String API_KEY = "App ec318ba0170be21d17be93c839a79480-2a0a9f83-5d9e-4f9a-b3cc-9642ff4a4701";
//    private static final String MEDIA_TYPE = "application/json";
//
//    private static final String SENDER = "Harpe";
//    static String jarrod = "27787836067";
//    private static final String RECIPIENT = "27631316314";
//    private static final String MESSAGE_TEXT = "sms noises";
//
//
//    public static void main(String[] args) throws IOException {
//        OkHttpClient client = new OkHttpClient().newBuilder()
//                .build();
//
//        String bodyJson = String.format("{\"messages\":[{\"from\":\"%s\",\"destinations\":[{\"to\":\"%s\"}],\"text\":\"%s\"}]}",
//                SENDER,
//                RECIPIENT,
//                MESSAGE_TEXT
//        );
//
//        MediaType mediaType = MediaType.parse(MEDIA_TYPE);
//        RequestBody body = RequestBody.create(mediaType, bodyJson);
//
//        Request request = prepareHttpRequest(body);
//        Response response = client.newCall(request).execute();
//
//        System.out.println("HTTP status code: " + response.code());
//        System.out.println("Response body: " + response.body().string());
//    }
//
//    private static Request prepareHttpRequest(RequestBody body) {
//        return new Request.Builder()
//                .url(String.format("%s/sms/2/text/advanced", BASE_URL))
//                .method("POST", body)
//                .addHeader("Authorization", API_KEY)
//                .addHeader("Content-Type", MEDIA_TYPE)
//                .addHeader("Accept", MEDIA_TYPE)
//                .build();
//    }
//}

