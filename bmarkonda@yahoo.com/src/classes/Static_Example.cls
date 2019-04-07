public class Static_Example {
   Integer rollno;  
   String name;  
   static String college ='ITS';  
   public Static_Example(Integer r,String n){  
   rollno = r;  
   name = n;  
   }    
    public void show(){
		System.debug('rollno is :'+rollno);
    	System.debug('name is :'+name);
    	System.debug('College is :'+college);
    }

}