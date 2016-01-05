public class MyRelated2 
{
    public static void myTest()
    {
    	Contact queriedContact = [SELECT Account.Name FROM Contact WHERE FirstName='Mario' AND LastName='Ruiz' LIMIT 1];
        queriedContact.Phone = '1232222222222';
        queriedContact.Account.Industry = 'Technology';
        
        update queriedContact;
        update queriedContact.Account;
    }
}