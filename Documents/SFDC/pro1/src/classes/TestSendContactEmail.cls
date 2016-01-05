@isTest
public class TestSendContactEmail 
{

    @isTest static void testSendContactEmailNull()
    {
        Contact con = new Contact(LastName='Zhu', FirstName='Danne');
        
        Test.startTest();
        insert(con);
        Test.stopTest();   
        System.assert(true, String.isBlank(con.Email));            
    }
    @isTest static void testSendContactEmailNotNull()
    {
        Contact con = new Contact(LastName='Sun', FirstName='Cindy', Email='amy.yang@meginfo.com');
       
        Test.startTest();
        insert(con);  
        Test.stopTest(); 
        System.assert(true, String.isNotBlank(con.Email));
    }
    
}