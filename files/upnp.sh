  #!/bin/bash

  LOCAL_IP=$( ip a show eth0 | grep 'inet ' | awk '{ print $2 }' | cut -f1 -d'/' )
  echo "local IP is $LOCAL_IP"

  GATEWAY_IP=$( ip r | grep default | awk '{ print $3}' )

  for PORT in 80 443
  do
  echo "upnp $PORT"
  upnpc -a $LOCAL_IP $PORT $PORT TCP  
  done
