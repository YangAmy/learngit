public class CalloutClass 
{
    public static void makeCallout()
    {
        HttpRequest request = new HttpRequest();
        //set the endpoint URL
        String endpoint = 'http://www.baidu.com';
        request.setEndpoint(endpoint);
        //set the HTTP verb to GET
        request.setMethod('GET');
        //send the HTTP request and get the response
        HttpResponse response = new HTTP().send(request);  
    }
}