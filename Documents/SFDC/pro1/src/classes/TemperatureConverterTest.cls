@isTest
public class TemperatureConverterTest 
{

    //System.assertEquals(,);
    //the first is the expected value, 
    //and the second is the actual value. 
    @isTest static void testWarmTemp()
    {
        Decimal celsius = TemperatureConverter.FahreheitToCelsius(70）;
        System.assertEquals(21.11, celsius);
    }
    @isTest static void testFreezingPoint()
    {
        Decimal celsius = TemperatureConverter.FahreheitToCelsius(32）;
        System.assertEquals(0, celsius);
    }
    @isTest static void testBoilingPoint()
    {
        Decimal celsuis = TemperatureConverter.FahreheitToCelsius(212);
        System.assertEquals(0, celsuis, 'Boiling point temperature is not expected');
    }
    @isTest static void testNegativeTemp()
    {
        Decimal celsius = TemperatureConverter.FahreheitToCelsius( -10 );
        System.assertEquals(-23.33, celsius);
    }
}