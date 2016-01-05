public class StringArrayTest 
{
    public static List<String> generateStringArray(Integer len)
    {
       List<String> strList = new List<String>();
       for(Integer i=0 ; i<len ; i++)
       {
           strList.add('Test ' + i);
       }
       return strList;
    }
}