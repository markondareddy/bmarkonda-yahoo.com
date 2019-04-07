public class Test_Contact_1 {
    public List<Opportunity> opps {set;get;}
    public Test_Contact_1(){
        opps=[select Id,Name from Opportunity];
     }
  }