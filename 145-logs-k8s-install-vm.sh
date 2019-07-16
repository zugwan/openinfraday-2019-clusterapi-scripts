#!/bin/bash

MASTER_VM_IP=$(openstack server list | grep master | awk '{print $9}')

echo "log of installing k8s on vm"
ssh -i ~/.ssh/openstack_tmp centos@${MASTER_VM_IP} -t "sudo tail -f /var/log/messages"
sudo tail -f /var/log/messages
