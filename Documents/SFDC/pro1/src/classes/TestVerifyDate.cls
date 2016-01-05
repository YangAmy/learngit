@isTest
public class TestVerifyDate 
{
    @isTest static void testCheckDates1()
    {
        Date date1 = Date.newInstance(2015, 9, 18);
        Date date2 = Date.newInstance(2015, 9, 23);
        Date d1 = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, d1);
    }
    @isTest static void testCheckDates2()
    {
        Date date1 = Date.newInstance(2015, 11, 18);
        Date date2 = Date.newInstance(2015, 9, 18);
        Date d1 = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(Date.newInstance(2015,11,30), d1);
    
    @isTest static void testCheckDates3()
    {
        Date date1 = Date.newInstance(2015, 9, 18);
        Date date2 = Date.newInstance(2015, 12, 1);
        Date d1 = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(Date.newInstance(2015,9,30), d1);
    }
   
}