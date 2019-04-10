public class Select_Example {
    public List<SelectOption> options {set;get;}
    public List<SelectOption> places  {set;get;}
    
    public Select_Example(){
        SelectOption op1 =new SelectOption('none','-None-');
        SelectOption op2 =new SelectOption('Hyd','TG');
        SelectOption op3 =new SelectOption('Ban','KA');
        SelectOption op4 =new SelectOption('Che','TN');
        options =new List<SelectOption>();
        options.add(op1);
        options.add(op2);
        options.add(op3);
        options.add(op4);
        List<String> myPlaces =new List<String>{'SRNagar','LBNagar','KPHB'};
        places =new List<SelectOption>();
        for(String s:myPlaces){          
            SelectOption op=new SelectOption(s,s);
            places.add(op);
        }
    }
}