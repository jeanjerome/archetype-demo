package $package;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
#if( $includeSaf == "true" )
        System.out.println( "Hello World with SAF!" );
#else
        System.out.println( "Hello World!" );
#end
    }
}
