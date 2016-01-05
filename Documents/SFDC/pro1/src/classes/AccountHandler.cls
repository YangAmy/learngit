public class AccountHandler 
{
    public static Account insertNewAccount(String str)
    {
        try
        {
            Account acc = new Account(Name=str);
            insert acc;
            return acc;
        }
        catch(DmlException e)
        {
            System.debug('字符串不能为空');
            return null;
        }    
    }   
}