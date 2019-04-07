public class PageRefference_Example {
    public String name {set;get;}
    public String city {set;get;}
    
    public PageRefference_Example(){
        name='Satish';
        city='Banglore';
    }
    
    public PageReference call(){
        PageReference p=new PageReference('/apex/PageBlock_Example');
        return p;
    }
    public PageReference show(){
        String url='/apex/MyData?name='+name;
        url=url+'&city='+city;
        PageReference p=new PageReference(url);
        return p;
    }
    public PageReference invoke(){
        PageReference p=Page.ListView_Notes;
        return p;
    }
}