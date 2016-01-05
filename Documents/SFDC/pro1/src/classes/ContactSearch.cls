public class ContactSearch 
{
    public static List<Contact> searchForContacts(String str1, String str2)
    {
        List<Contact> conList = new List<Contact>([ SELECT Id,Name
            										FROM Contact
            										WHERE LastName=:str1 and MailingPostalCode=:str2]
        );
        return conList;
    }
}