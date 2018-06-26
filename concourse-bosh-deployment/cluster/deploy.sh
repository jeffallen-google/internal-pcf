bosh deploy -d concourse concourse.yml \
  -l ../versions.yml \
  --vars-store cluster-creds.yml \
  -o operations/no-auth.yml \
  -o operations/privileged-http.yml \
  -o operations/privileged-https.yml \
  -o operations/tls.yml \
  -o operations/tls-vars.yml \
  -o operations/web-network-extension.yml \
  --var network_name=default \
  --var web_vm_type=default \
  --var db_vm_type=default \
  --var db_persistent_disk_type=10GB \
  --var worker_vm_type=default \
  --var deployment_name=concourse \
  --var web_network_name=private \
  --var web_network_vm_extension=ilb \
  --var atc_basic_auth.username=admin \
  --var atc_basic_auth.password=admin \
  --var external_url=https://10.100.0.100
