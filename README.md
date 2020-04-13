# archetype-demo
Creation of a multi-module app from multiple Maven archetypes.

## How to test it?

1. Run the bash script (on Windows, just run the included commands) install-archetypes-local.sh
This will build 3 Maven Archetypes and install them on your local Maven repository (~/.m2/repository)

1. Run the bash script create-app-from-archetypes.sh (or the included commands).
This will create an app from the 3 previous built archetypes.

## What does this demonstrate?

1. You can apply different Maven archetypes on the same project (even multi-module ones) runnig the portable command mvn:generate several times.

1. Velocity templates lets add customization when executing Maven archetypes.

1. You can split an archetype in multiple parts, each one dedicated to a tier (angular, api, service, dao,...) or a functionality (security, microservice, Springboot, DDD, container,...).

## Disclaimer

1. This is a basic demo yet!

1. More complex cases have to be tested to prove real efficiency in such solution.
