public class SOQL_Where_1 {

    public List<SelectOption> options {set;get;}
    public String selected            {set;get;}
    public List<Account> accounts     {set;get;}
    
    public SOQL_Where_1(){
        options =new List<SelectOption>();
        List<String> industries =new List<String>{'Banking','Education','Housing','Energy'};
        SelectOption n=new SelectOption('none','-None-');
        options.add(n);
        for(String s: industries){
            SelectOption op=new SelectOption(s,s);
            options.add(op);
        }
    }
    
    public void show(){
        if(selected!='none'){
            accounts =[select id,Name,Phone,Industry,Rating from Account where industry=:selected];
        }
    }
    
    public void call(){
        // Selected : 
        String query='select id,Name,Phone,Industry,Rating from Account'; 
        if(selected!='none'){
            query=query+' where industry=\''+selected+'\'';             
        }
        accounts=Database.query(query);
    }
}