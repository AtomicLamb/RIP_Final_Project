package TrialAndError.ReadersAreInnovators.ServiceLayers;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;

import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Date;
import java.util.ArrayList;

public interface Functions_Interface {
   
   
   Boolean verifyLoginDetails(User user, String DBEmail, String DBPassword);
   Boolean isNumber(String value);
   Boolean phoneNumberVerification(String phoneNum);
   Boolean integerToBoolean(Integer value);
   Integer booleanToInteger(Boolean bool);
   Boolean wordCountVerification(String storyBody);
   String dateToString(Date date);
   Date stringToDate(String string);
   String encodeBase64(InputStream imageStream);
   String decodeBase64(String imageString);
   
 
}
