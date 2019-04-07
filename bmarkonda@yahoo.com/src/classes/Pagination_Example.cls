public class Pagination_Example {
    public Apexpages.StandardSetController controller {set;get;}
    public Integer noPages {set;get;}
    public List<Opportunity> getOpty(){
        List<Opportunity> opty=(List<Opportunity>)controller.getRecords();
        return opty;        
    }
    public Pagination_Example(){
        List<Opportunity> opty = [select id,Name,StageName,CloseDate,amount from Opportunity];
        controller = new Apexpages.StandardSetController(opty);
        controller.setPageSize(5);
        Integer size=controller.getResultSize();        
        Integer val=Math.mod(size,5); 
        if(val>0){
            noPages=(Integer) (Math.floor(size/5))+1;  
        }else{
            noPages=(Integer) (Math.floor(size/5));
        } 
    }
}