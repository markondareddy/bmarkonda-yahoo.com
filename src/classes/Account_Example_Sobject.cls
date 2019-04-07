public class Account_Example_Sobject {
        public Account acc;
        public Contact con;
        public Position__c cust;
        /* public void create(){
            acc=new Account();
            acc.Name='Dell';
            acc.Phone='123';
        }
        public void invoke(){
            con=new Contact(lastName='Myla',FirstName='Satish');
        } */
        public void call(){
            cust=new Position__c();
            //cust.Name='Satish';
            cust.Job_Level__c='Java Script';
            cust.Status__c='New Position';
            cust.Type__c='Full Time';
         
        }
}