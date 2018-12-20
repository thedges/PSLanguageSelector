public class PSLanguageSelectorController {
    @AuraEnabled
    public static void changeLanguage(String lang) {
       String userId = UserInfo.getUserId();
       String networkId = Network.getNetworkId();
        
       User u = new User();
       u.Id = userId;
       u.LanguageLocaleKey = lang;
       update u;
    }

    @AuraEnabled
    public static String getUserLanguage() {
       if (UserInfo.getUserType() == 'Guest') return '';
        
       String userId = UserInfo.getUserId();
           
       User u = [SELECT Id, LanguageLocaleKey FROM User WHERE Id = :userId];
       return u.LanguageLocaleKey;
    }

}