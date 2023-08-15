public class LeadScoreController {
    @AuraEnabled(cacheable=true)
    public static Lead getLeadScore(Id leadId) {
        Lead lead = [SELECT Id, Industry, Status, Rating, AnnualRevenue, Have_Budget__c, Got_Answer__c
         FROM Lead WHERE Id = :leadId LIMIT 1];
        return lead;
    }
}