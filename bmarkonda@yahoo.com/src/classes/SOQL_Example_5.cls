public class SOQL_Example_5 {

    public List<SelectOption> options {set;get;}
    public List<String> selected      {set;get;}
    public String query               {set;get;}
    public List<Account> accounts     {set;get;}
    
    public SOQL_Example_5(){
        selected =new List<String>();
        options =new List<SelectOption>();
        List<String> fields =new List<String>{'Name','Phone','Industry','Rating','Ownership'};
        for(String s: fields){
           SelectOption op=new SelectOption(s,s);
           options.add(op);
        }
    }
    
    public void search(){
        query='select id';
        if(selected.size()>0){
            for(String s: selected){
                query=query+','+s;    
            }
            query=query+' from Account';
            accounts=Database.query(query);
        }
    }
}