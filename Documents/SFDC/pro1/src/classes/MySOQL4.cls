public class MySOQL4 
{

    public static void myTest()
    {
        Account[] acctWithContacts = [SELECT Name,(SELECT FirstName,LastName FROM Contacts)
                                      FROM Account
                                      WHERE Name = 'SFDC Computing'];
        //get child records 
        Contact[] cts = acctWithContacts[0].Contacts;
        System.debug('Name of first associated contact:' + cts[0].FirstName + ',' + cts[0].LastName);
    }
}