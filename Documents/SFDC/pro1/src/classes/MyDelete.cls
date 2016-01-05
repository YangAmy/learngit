public class MyDelete 
{
    public static void myDelete()
    {
    	Contact[] contactDel = [SELECT Id FROM Contact WHERE LastName='Smith'];
        delete contactDel;
    }
}