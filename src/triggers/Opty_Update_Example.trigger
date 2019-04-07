trigger Opty_Update_Example on Opportunity (after update) {
    Map<Id,Opportunity> oldMap=Trigger.oldMap;
    Map<Id,Opportunity> newMap=Trigger.newMap;
    Set<Id> keys=oldMap.keySet();
    User u=[select id from User where alias='pchan'];
    List<OpportunityTeamMember> teams =new List<OpportunityTeamMember>();
    for(Id k:keys){
        Opportunity old=oldMap.get(k); // old version of record based on recordId
        Opportunity newOpt=newMap.get(k); // new version of record based on recordId
        if(old.stageName!='Closed won' && newOpt.Stagename=='Closed Won'){
            OpportunityTeamMember otm =new OpportunityTeamMember();
            otm.OpportunityId=k;
            otm.userId=u.id;
            otm.OpportunityAccesslevel='Read';
            otm.TeamMemberRole='Account Manager';
            teams.add(otm);
        }
    }
    insert teams;
}