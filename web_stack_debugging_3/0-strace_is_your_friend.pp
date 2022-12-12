#!/usr/bin/env bash
# used strace to find out why apache is returing a 500 error
exec {'debug_500':
  command => 'sed -i "s|require_once( ABSPATH . WPINC . \'/class-wp-locale.phpp\' );\
|require_once( ABSPATH . WPINC . \'/class-wp-locale.php\' );|g" /var/www/html/wp-settings.php',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
}
