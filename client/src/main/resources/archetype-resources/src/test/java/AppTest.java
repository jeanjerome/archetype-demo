package $package;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import java.io.File;

/**
 * Unit test for simple App.
 */
public class AppTest {

    @Test
    public void testSecurityFiles() {

        File securityDir = new File("src/main/security");
        File securityFile = new File("src/main/security/security.properties");
        File nosecurityDir = new File("src/main/nosecurity");
        File nosecurityFile = new File("src/main/nosecurity/nosecurity.properties");

#if ($addSecurity == "Y")
        assertTrue(securityDir.isDirectory() && securityFile.exists());
        assertTrue(!nosecurityDir.isDirectory() && !nosecurityFile.exists());
#else
        assertTrue(!securityDir.isDirectory() && !securityFile.exists());
        assertTrue(nosecurityDir.isDirectory() && nosecurityFile.exists());
#end

    }
}
