class ssh inherits ssh::params {

  package { 'openssh-package':
       name => 'openssh',
       ensure => present,
       before => File['/etc/ssh/sshd_config'],
    }
  
  file { '/etc/ssh/sshd_config':
    ensure   => file,
    owner    => root,
    group    => root,
    source   => 'puppet:///modules/ssh/sshd_config',
    notify   => Service['ssh-service'],
  #  require  => Package['openssh-package'],
  }
 
  service { 'ssh-service':
    name   => $ssh_name,
    ensure => running,
    enable => true,
#    subscribe => File['/etc/ssh/sshd_config'],
  } 
 }
