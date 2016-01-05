public class MyUpsert2 
{
    public static void myTest()
    {
        Contact jane = new Contact(FirstName='Jane', LastName='Smith',
            Email='jane.smith@example.com', Description='Contact of th day');
        insert jane;
        
        //upsert using an idLookup field
        //create a second sObject variable
        //this varaible doesn't have any ID set
        Contact jane2 = new Contact(FirstName='Jane', LastName='Smith', 
            Email='jane.smith@example.com', Description='Prefers to be contacted by email');
        
        //upsert the contact by using the idLookup field for matching
        upsert jane2 Contact.fields.Email;
        
        //verify that the contact has been updated
        System.assertEquals('Prefers to be contacted by email',
            [SELECT Description FROM Contact WHERE Id =: jane.Id].Description);
    }
}