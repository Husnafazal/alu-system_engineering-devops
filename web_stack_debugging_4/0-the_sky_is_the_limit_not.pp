#!/usr/bin/env bash
# increasing the file limit 
exec {'increase max limit':
  command =>  'sed -i "s/15/20000/g" /etc/default/nginx;service nginx restart',
  path    =>  '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
