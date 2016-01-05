public class MyID 
{
    public static void myTest()
    {
    	Account acct = new Account(Name='Dyami',Phone='1234567',NumberOfEmployees=123);
        insert acct;
    
        ID acctID = acct.ID;
        //ID acctID = acct.Id 也可以
        System.debug('ID='+acctID);
    } 
}