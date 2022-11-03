public class lwcPracticeOne {

    @AuraEnabled(Cacheable=true)
    public static List<Contact> showContacts(String accountId){
        return [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId =: accountId LIMIT 5];
    }
    
}