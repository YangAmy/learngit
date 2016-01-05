public class MySOQL2 
{
    public static void myTest()
    {
      Account[] accts = [SELECT Name,Phone FROM Account
                   			WHERE (Name='SFDC Computing' AND NumberOfEmployees>25)
                   			ORDER BY Name
                   			LIMIT 10];
      System.debug(accts.size() + ' account(s) returned.');
        // Write all account array info
      System.debug(accts);
    }
}