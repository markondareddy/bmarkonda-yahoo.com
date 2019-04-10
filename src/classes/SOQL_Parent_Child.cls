public class SOQL_Parent_Child {

    public List<Account> accounts     {set;get;}
    public List<Contact> contacts     {set;get;}
    public List<Opportunity> optyList {set;get;}
    public List<Case> cases           {set;get;}
    
    public SOQL_Parent_Child(){
    
        accounts =[select Id,Name,Phone,(select LastName,FirstName from Contacts) ,(select id,Name,Amount from Opportunities),(select subject,Type,Priority from cases) from Account];
    
    }
    
}