public class MySOQL1 
{
  public static void myTest()
  {
    Account acct = new Account(Name='SFDC Computing',
                              Phone='12333444',
                              NumberOfEmployees=50,
                              BillingCity='San Francisco');
    insert acct;
        
    ID acctID = acct.ID;
        
    //add a contact to this account
    Contact con = new Contact(FirstName='Carol',
                              LastName='Ruiz',
                              phone='12345556',
                              Department='Wingo',
                              AccountId=acctID);
    insert con;
        
    //add acount with no contact
    Account acct2 = new Account(Name='the SFDC Query Man',
                                Phone='34566666',
                                NumberOfEmployees=50,
                                BillingCity='Los Angeles',
                                Description='Expert in wing technologies');
    insert acct2;        
  }
}