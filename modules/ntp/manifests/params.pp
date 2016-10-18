class ntp::params {

  case $::operatingsystem {
      'RedHat' : {  $service_name = 'ntpd' }
      'CentOs': {  $service_name = 'ntpd' }
      'ubuntu': {  $service_name = 'ntp' }
      default: { fail('OS is not supporting puppet module') }
}
}
 
