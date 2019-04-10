public class Map_Example_1{
    public Map<String,List<String>> cityMap {set;get;}
    public List<SelectOption> cities {set;get;}
    public List<SelectOption> places {set;get;}
    public String citySelected {set;get;}
    
    public Map_Example_1() {
        cities=new List<SelectOption>();
        places=new List<SelectOption>();        
        SelectOption n=new SelectOption('none','-None-');
        cities.add(n);
        places.add(n);
        
       // cityName as key and List of places as value
       cityMap=new Map<String,List<String>>();        
       List<String> hplaces =new List<String>{'SRNagar','LBNagar','Ammerpet'};
       List<String> bplaces =new List<String>{'ECity','Marathahali','JPNagar'};
       List<String> cplaces =new List<String>{'Thambaram','Chromepet','Guindy'};
       
       cityMap.put('Hyd',hplaces);
       cityMap.put('Ban',bplaces);
       cityMap.put('Che',cplaces);
       
       //fetch all cities from the map
       Set<String> keys=cityMap.keySet();
       for(String s:keys){
           SelectOption op=new SelectOption(s,s);
           cities.add(op);
       }
    }
    
    public void search() {
    
    /* Remove all the old places from the picklist */
        places.clear();
    
    /* Create a none option and add it to the places */
        SelectOption n=new SelectOption('none','-None-');
        places.add(n);
    
      /* If citySelected is not equals to none then fetch the places from the map */
        if(citySelected!='none'){
          List<String> myPlaces =cityMap.get(citySelected);
            for(String s: myPlaces){
                SelectOption op=new SelectOption(s,s);
                places.add(op);
            }
        }
     }  

}