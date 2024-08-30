public with sharing class OpportunitiesAmount {
    public OpportunitiesAmount() {
        List<Opportunity> opportunities = [SELECT Amount FROM Opportunity];
        Integer listSize = opportunities.size();
        Decimal total = 0;
        for(Integer i = 0; i < listSize ; i++) {
            total += opportunities[i].Amount;
        }

        return total;
    }
}