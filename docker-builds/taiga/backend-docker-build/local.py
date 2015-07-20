from .common import *

from .dockerenv import *

INSTALLED_APPS += ["taiga_contrib_ldap_auth"]

LDAP_SERVER = 'ldap://ldap'
LDAP_PORT = 10389

LDAP_BIND_DN = 'uid=admin,ou=system'
LDAP_BIND_PASSWORD = 'secret'   # eg.
LDAP_SEARCH_BASE = 'ou=users,dc=dev,dc=com'
LDAP_SEARCH_PROPERTY = 'uid'
LDAP_SEARCH_SUFFIX = None 
LDAP_EMAIL_PROPERTY = 'email'
LDAP_FULL_NAME_PROPERTY = 'cn'