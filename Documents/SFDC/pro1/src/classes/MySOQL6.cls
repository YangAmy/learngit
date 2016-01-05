public class MySOQL6 
{
    public static void myTest()
    {
        insert new Account[]{new Account(Name = 'for loop 1'),
                             new Account(Name = 'for loop 2'),
                             new Account(Name = 'for loop 3')};
                                 
        Integer i=0;
        Integer j=0;
        
        for(Account[] tmp : [SELECT Id FROM Account WHERE Name LIKE 'for loop _'])
        {
            j = tmp.size();
            i++;
        }
        
        System.assertEquals(3, j);
        System.assertEquals(1, i);    
    }
}