public class Employee {
    public String name;
    public Integer empNo;
    public Employee(){
        System.debug('Default constructor');
        name='Rama';
        empNo=666;
    }   
    {
        System.debug('Block is calling..');
    }
     static{
        System.debug('Static block is calling...');
    }
    public void show(){
        System.debug('Employee name is :'+name);
        System.debug('Employee ID is :'+empNo);
    }
}