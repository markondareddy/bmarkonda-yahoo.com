global class Batch_Example_1 implements Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select id,name,type from Opportunity';
        return Database.getQueryLocator(query); // This can return upto 50 Million records 
    }

    global void execute(Database.BatchableContext bc,List<Opportunity> scope){
        for(Opportunity op:scope){
            op.type='New Customer';
           }
        update scope;
        System.debug('SubJob:'+bc.getChildJobId());
    }
    global void finish(Database.BatchableContext bc){
        AsyncApexJob job=[select id,status,JobType from AsyncApexJob where id=:bc.getJobId()];
        System.debug('Status:'+job.status);
    }

}

/* how to execute */ 
/*
 Batch_Example_1 be=new Batch_Example_1();
 Id jobId=Database.executeBatch(be);

 default size :200
 Id JobId = Database.executeBatch(be,2);

*/