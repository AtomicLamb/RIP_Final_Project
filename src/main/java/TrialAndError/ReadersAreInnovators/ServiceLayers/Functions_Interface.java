package TrialAndError.ReadersAreInnovators.ServiceLayers;

import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import java.io.InputStream;
import java.sql.Date;


/**
 * @Desctripion:    The Functions Class Interface for common functions of the system.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

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
   
   String passwordEncryption(String password);
   
   String passwordDecryption(String password);
   
 
}
