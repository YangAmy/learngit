public class MySOQL3 
{
    public static void myTest()
    {
        String tarDepartment = 'Wingo';
        Contact[] techContacts = [SELECT FirstName,LastName
                                  FROM Contact 
                                  WHERE Department =: tarDepartment];
        System.debug(techContacts);
    }
}