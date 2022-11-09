#!/bin/bash
#This is the LDAP server script
authconfig --enableldap --enabledapauth --ldapserver=10.2.6.0/23 --enablemkhomedir --update
ldapldapadd -x -W -D "cn=root, dc=10.2.6.0/23, dc=local"
su -su - root
yum -y install migrationtools
via /etc/exports/home *(rw.sync)
systemctl enable slapd.service
grep ":5[0-4][0-4]" /etc/passwd > /root/passwd
grep ":5[0-4][0-4]" /etc/group > /root/group
