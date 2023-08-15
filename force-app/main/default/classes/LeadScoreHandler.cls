public class LeadScoreHandler {
    public static void calculateLeadScore(List<Lead> leads) {
        for (Lead lead : leads) {
            Integer leadScore = 0;

            if (lead.Industry == 'Electronics' || lead.Industry == 'Energy' || lead.Industry == 'Consulting'
                || lead.Industry == 'Communications' || lead.Industry == 'Biotechnology') {
                leadScore += 10;
            } else if (lead.Industry == null) {
                leadScore += 0;
            } else{
                LeadScore += 5;
            }


            if (lead.Status == 'Working - Contacted' || lead.Status == 'Closed - Converted') {
                leadScore += 10;     
            } else {
                leadScore += 0;
            }

            
            if (lead.Rating == 'Cold') {
                leadScore += 2;
            } else if (lead.Rating == 'Warm') {
                leadScore += 5;
            } else if (lead.Rating == 'Hot') {
                leadScore += 10;
            }

            if (lead.AnnualRevenue >= 100000) {
                leadScore += 10;
            } else if (lead.AnnualRevenue == 0){
                leadScore += 0;
            }else{
                leadScore += 8;
            }

            if (lead.Have_Budget__c == true) {
                leadScore += 10;
            } else {
                leadScore += 0;
            }


            if (lead.Got_Answer__c == true) {
                leadScore += 5;
            } else {
                leadScore += 0;
            }


            lead.LeadScore__c = leadScore;
        }
    }
}