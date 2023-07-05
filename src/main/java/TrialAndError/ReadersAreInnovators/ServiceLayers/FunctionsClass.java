package TrialAndError.ReadersAreInnovators.ServiceLayers;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import org.apache.commons.io.IOUtils;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;


/**
 * @Desctripion:    The Functions Class for common functions of the system.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class FunctionsClass implements Functions_Interface{
    
    
    public FunctionsClass() {
        
    }
    
    
    @Override
    public Boolean verifyLoginDetails(User user, String DBEmail, String DBPassword) {
        
        String email = user.getEmail();
        String password = user.getPassword();
        
        if (email.equalsIgnoreCase(DBEmail) && password.equals(DBPassword)){
            
            return true;
            
        } else {
            
            return false;
                    
        }
        
    }
    
    
    @Override
    public Boolean isNumber(String value) {
        
        try{
            
            Integer.parseInt(value);
            
        }catch (NumberFormatException n){
            
            return false;
            
        }
        
        return true;
        
    }
    
    
    @Override
    public Boolean phoneNumberVerification(String phoneNum) {
        
        Boolean b = true;
        
        if (!isNumber(phoneNum)){
            
            b = false;
            
        }
        
        if (phoneNum.charAt(0) != 0){
            
            b = false;
            
        }
        
        if (phoneNum.length() != 10){
            
            b = false;
            
        }
        
        return b;
        
    }
    
    
    @Override
    public Boolean wordCountVerification(String storyBody) {
        
        StringTokenizer tokenizer = new StringTokenizer(storyBody);
        Integer wordCount = 0;
        
        while (tokenizer.hasMoreTokens()){
            
            tokenizer.nextToken(" ");
            wordCount++;
            
        }
        
        if (wordCount >= 10000){
            
            return false;
            
        } else {
            
            return false;
            
        }
        
    }
    
    
    @Override
    public Boolean integerToBoolean(Integer value) {
        
        Boolean b;
        
        if (value == 0){
            
            b = false;
            
        } else {
            
            b = true;
            
        }
        
        return b;
        
    }
    
    
    @Override
    public Integer booleanToInteger(Boolean bool) {
        
        if(bool == false){
            
            return 0;
            
        } else {
            
            return 1;
            
        }
        
    }
    
    
    @Override
    public String dateToString(Date date) {
        
        return date.toString();
        
    }
    
    
    @Override
    public Date stringToDate(String string) {
        
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        format.setTimeZone(TimeZone.getTimeZone("UTC"));
        
        java.util.Date date = null;
        
        try {
            
            date = format.parse(string);
            
        } catch (ParseException e) {
            
            throw new RuntimeException(e);
            
        }
        
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        
        return sqlDate;
        
    }
    
    
    @Override
    public String encodeBase64(InputStream imageStream) {
        
        byte[] inputImage;
        
        try {
            
            inputImage = IOUtils.toByteArray(imageStream);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
        }
        
        String encodedString = Base64.getEncoder().encodeToString(inputImage);
        
        return  encodedString;
        
    }
    
    
    @Override
    public String decodeBase64(String imageString) {
        
        Path folder = Paths.get("C:\\Users\\TKS\\IdeaProjects\\Trial and Error - Readers are Innovators\\src\\main\\resources\\images");
        
        if (!Files.exists(folder)) {
            
            try {
                
                Files.createDirectories(folder);
                
            } catch (IOException ex) {
                
                throw new RuntimeException(ex);
                
            }
            
        }
        
        byte[] imageBytes = Base64.getDecoder().decode(imageString);
        
        int fileNumber = 1;
        String fileName = "Image" + fileNumber + ".jpg";
        
        while (Files.exists(folder.resolve(fileName))) {
            
            fileNumber++;
            fileName = "Image" + fileNumber + ".jpg";
            
        }
        
        Path imagePath = folder.resolve(fileName);
        
        try (FileOutputStream outputStream = new FileOutputStream(imagePath.toFile())) {
            
            outputStream.write(imageBytes);
            
        } catch (FileNotFoundException e) {
            
            throw new RuntimeException(e);
            
        } catch (IOException e) {
            
            throw new RuntimeException(e);
            
        }
        
        String pathName = "C:\\Users\\TKS\\IdeaProjects\\Trial and Error - Readers are Innovators\\src\\main\\resources\\images\\" + fileName;
        
        return pathName;
        
    }
    
    
    @Override
    public String passwordEncryption(String password) {
        
        byte[] passwordBytes = password.getBytes();
        
        String encryptedPassword = Base64.getEncoder().encodeToString(passwordBytes);
        
        return encryptedPassword;
        
    }
    
    
    @Override
    public String passwordDecryption(String password) {
        
        byte[] passwordBytes = Base64.getDecoder().decode(password);
        
        String decryptedPassword = new String(passwordBytes);
        
        return decryptedPassword;
        
    }
    
    
}
