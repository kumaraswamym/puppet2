class ntp::service inherits ntp::params{

  service {'ntp_service':
     name => $service_name,
     ensure => running,
     enable => true,
     subscribe => File['/etc/ntp.conf'],
   }
}
