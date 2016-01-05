public class MySOSL 
{
    public static void myTest()
    {
        List<List<sObject>> searchList = [FIND 'Wing OR SFDC' IN ALL FIELDS RETURNING 
                                          Account(Name), Contact(FirstName,LastName,Department)];
        Account[] searchAccounts = (Account[]) searchList[0];
        
        try
        {
            Contact[] searchContacts = (Contact[]) searchList[0];
            System.debug('Found the following contacts');
            for(Contact c : searchContacts)
            {
              System.debug(c.LastName + ',' + c.FirstName);
            }
        }
        catch(Exception e)
        {
            System.debug(e);
        }
        
        
        System.debug('Found the following accounts.');
        
        for(Account a : searchAccounts)
        {
            System.debug(a.Name);
        }
        
    }
}