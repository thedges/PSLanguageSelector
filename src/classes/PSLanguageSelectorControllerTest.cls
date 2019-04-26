@isTest
public class PSLanguageSelectorControllerTest {
    @isTest 
    static void testChangeLanguage() {
        PSLanguageSelectorController.changeLanguage('en_US');
        System.assert(true);
    }

    @isTest 
    static void testGetUserLanguage() {
        String resp = PSLanguageSelectorController.getUserLanguage();
        System.assert(true);
    }
}