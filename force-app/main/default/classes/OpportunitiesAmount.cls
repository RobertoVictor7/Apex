public with sharing class OpportunitiesAmount {
    @AuraEnabled(cacheable=true)
    public static Decimal getOpportunitiesAmountTotal() {
        List<Opportunity> opportunities = [SELECT Amount FROM Opportunity];
        Integer listSize = opportunities.size();
        Decimal total = 0;
        for(Integer i = 0; i < listSize ; i++) {
            total += opportunities[i].Amount;
        }

        return total;
    }
}