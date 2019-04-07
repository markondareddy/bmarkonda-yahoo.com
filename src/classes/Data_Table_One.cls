public class Data_Table_One {
    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> account=[select id,Name,Phone,Industry,Rating from Account];
        return account;
    }
}