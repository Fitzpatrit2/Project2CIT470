#!/bin/bash
#This is the LDAP server script
dnf -y install openldap openldap-servers openldap-clients
authconfig --enableldap --enabledapauth --ldapserver=10.2.6.0/23 --enablemkhomedir --update
ldapldapadd -x -W -D "cn=root, dc=10.2.6.0/23, dc=local"
su -su - root
