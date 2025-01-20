#!/bin/bash
ansible all -m yum_repository -a "name=EPEL  description='RHEL8' baseurl='fedoraproject.org/pub/epel/epel-release-8.noarch.rpm' gpgcheck=no enabled='no'  file=local state=present"
