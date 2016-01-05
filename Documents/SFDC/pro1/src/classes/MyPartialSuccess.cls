public class MyPartialSuccess 
{
  public static void myTest()
  {
    List<Contact> conList = new List<Contact>{
    new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
    new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
    new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
    new Contact()};
    
    //Bulk insert all contact with one DML call
    Database.SaveResult[] srList = Database.insert(conList,false);
    
    //iterate through each returned result 
    for(Database.SaveResult sr : srList)
    {
      if(sr.isSuccess())
      {
        System.debug('Successfully inserted contact. Contact ID:'+ sr.getId());
      }
      else
      {
        for(Database.Error err : sr.getErrors())
        {
          System.debug('the following error has occurred.');
          System.debug(err.getStatusCode() + ': ' + err.getMessage());
          System.debug('Contact fields that affected this error:'+err.getFields());
        }
      }
    }
  }
}