// Define project attributes
def rootDir = new File(request.getOutputDirectory() + "/" + request.getArtifactId())

 // Read generate parameters
def addSecurity = request.getProperties().get("addSecurity")

if (addSecurity == "Y") {
    // Remove nosecurity directory
    assert new File(rootDir, "src/main/nosecurity").deleteDir()
} else {
    // Remove security directory
    assert new File(rootDir, "src/main/security").deleteDir()
}