public with sharing class getrecord {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Phone FROM Account ORDER BY CreatedDate DESC Limit 10];

    }
}