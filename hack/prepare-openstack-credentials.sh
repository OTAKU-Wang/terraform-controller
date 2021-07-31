#!/bin/bash

echo "openstackUser: ${OPENSTACK_USER}\nopenstackPassword: ${OPENSTACK_PASSWORD}\nopenstackTenantName: ${OPENSTACK_TENANT_NAME}\nopenstackAuthUrl: ${OPENSTACK_AUTH_URL}" > openstack-credentials.conf
kubectl create secret generic openstack-account-creds -n vela-system --from-file=credentials=openstack-credentials.conf
rm -f openstack-credentials.conf