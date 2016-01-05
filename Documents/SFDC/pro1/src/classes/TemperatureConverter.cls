public class TemperatureConverter 
{
    public static Decimal  FahreheitToCelsius(Decimal fh)
    {
        Decimal cs = ( fh - 32 ) * 5 / 9;
        return cs.setScale( 2 );
    }
}