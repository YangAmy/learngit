public class MyReleted 
{
  public static void myTest()
  {
    Account acct = new Account(Name='SFDC Account');
    insert acct;
       
    // once the account is inserted,the sOject will be populated with an ID
    // get this ID
    ID acctID = acct.ID;
       
    //Add a contact to this account
    Contact mario = new Contact(FirstName='Mario',
                                LastName='Ruiz',
                                Phone='21222',
                                AccountId=acctID);
    insert mario;
  }
}