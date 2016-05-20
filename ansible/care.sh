#!/bin/bash
if [ -z "$1" ]; then
	cat - > hosts
else 
	echo "$1" > hosts
fi
ansible-playbook -i hosts care.yml
rm hosts
