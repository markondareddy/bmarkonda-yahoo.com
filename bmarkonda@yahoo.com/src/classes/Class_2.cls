public class Class_2 {
    public String name {set;get;}
    public String city {set;get;}
    public Class_2(){
        name=Apexpages.currentPage().getParameters().get('name');
        city=Apexpages.currentPage().getParameters().get('city');
    }
    
}