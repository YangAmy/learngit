public class RandomContactFactory 
{
    public static List<Contact> generateRandomContacts(Integer numCons, String lastNameCon)
    {
        List<Contact> contacts = new List<Contact>();
        for(Integer i=0 ; i<numCons ; i++)
        {
            contacts.add(new Contact(FirstName='Test '+i, LastName=lastNameCon));
        }
        return contacts;
    }
}