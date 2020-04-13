# archetype-demo
Creation of a multi-module app from multiple Maven archetypes.

##How to test it?

1. Run the bash script (on Windows, just run the included commands) install-archetypes-local.sh
This will build 3 Maven Archetypes and install them on your local Maven repository (~/.m2/repository)

2. Run the bash script create-app-from-archetypes.sh (or the included commands).
This will create an app from the 3 previous built archetypes.

##What does this demonstrate?

1. You can run mvn:generate several times on the same directory.

2. Velocity template lets add customisation when Maven archetype runs.

3. You can split archetypes in multiple parts, each one dedicated to a tier (angular, api, service, dao,...) or a function (sesame, saf, springboot, ddd,...). 
