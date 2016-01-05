public class MyDmlExcep 
{
    public static void myTest()
    {
        try
        {
            //this causes an exception because
            // the requred Name field is not provided
            Account acct = new Account();
            //insert the account
            insert acct;
        }
        catch(DmlException e)
        {
            System.debug('A DML exception has occurred:'+e.getMessage());
        }
    }
}