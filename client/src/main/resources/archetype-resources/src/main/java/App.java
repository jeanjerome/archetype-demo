package $package;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
#if ($addSecurity == "Y")
        System.out.println("Hello World with security");
#else
        System.out.println("Hello World!");
#end
    }
}
