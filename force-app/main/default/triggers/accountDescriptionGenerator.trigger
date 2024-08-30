trigger accountDescriptionGenerator on Account (before insert) {
    if(Trigger.isBefore) {
        if(Trigger.isInsert) {
            for(Account acc : Trigger.new) {
                if(acc.Description == null) {
                    Date dateOfCreation = Date.today();
                    acc.Description = 'Account created on the day: ' + dateOfCreation;
                }  
            }
        }
    }
}