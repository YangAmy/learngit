@isTest
public class TestRestrictContactByName 
{
    @isTest static void testRestrictContactByName()
    {
        Contact con = new Contact(FirstName='Ella', LastName='INVALIDNAME');
       
        Test.startTest();
        Database.UpsertResult result = Database.upsert(con, false);
        Test.stopTest();
       
        System.assert(true, result.isSuccess());
        System.assert(result.getErrors().size()>0);
        System.assertEquals('The Last Name "' + con.LastName + '" is not allowed for DML',
                            result.getErrors()[0].getMessage());   
    }
}