public class MyUpsert 
{
  public static void myTest()
  {
    //insert the Josh contact
    Contact josh = new Contact(FirstName='Josh', LastName='Kaplan', Department='Finance');      
    insert josh;

    josh.Description = 'Josh\'s record has been updated by the upsert operation.';

    //Create the Kathy contact, but don't persist it in the database

    Contact kathy = new Contact(FirstName='Kathy', LastName='Brown', Department='Technology');

    // List to hold the new contacts to upsert
    List<Contact> contacts = new List<Contact> { josh, kathy };
    upsert contacts;
  }
}