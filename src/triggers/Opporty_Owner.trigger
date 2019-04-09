trigger Opporty_Owner on Opportunity (before insert) {
    List<Opportunity> opty=Trigger.New;
    for(Opportunity op:opty){
        op.stagename='Prospect';
        op.closeDate=System.today()+15;
        op.Type='New Customer';

    }
   }