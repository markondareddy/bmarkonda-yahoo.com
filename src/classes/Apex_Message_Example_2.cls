public class Apex_Message_Example_2 {
    public String name {set;get;}
    public Integer age {set;get;}
    public String location {set;get;}
    public void submit(){
        if(name==''){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Name cannot be blank');
            Apexpages.addMessage(msg);
        }
        if(age < 30){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.WARNING,'Age Cannot be less than 30');
            Apexpages.addMessage(msg);
        }
        
        if(location==''){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Location cannot be blank');
            Apexpages.addMessage(msg);
        }
    }
}