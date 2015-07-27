#!/bin/bash 

echo "Starting the LDAP Apache DS Service ..."
docker run -d --name ldap -v `pwd`/ldap/bootstrap:/bootstrap -e BOOTSTRAP_FILE=/bootstrap/spike-users.ldif -p 10389:10389 greggigon/apacheds
echo "Container started with name [ldap]"
