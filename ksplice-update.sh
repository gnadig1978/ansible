
 #/bin/bash

echo "updating the Kernel using Ksplice in OCI"

uptrack-upgrade -v -n;uptrack-show --available;yum erase oracle-cloud-agent-0.0.18-18.el7.x86_64 -y;yum --disablerepo=* --enablerepo=ol7_latest --enablerepo=ol7_UEKR6 --enablerepo=ol7_optional_latest update -y;uptrack-upgrade -y;uptrack-uname -a
