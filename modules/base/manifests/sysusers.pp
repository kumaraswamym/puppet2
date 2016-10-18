class base::sysusers {

   user {'admin' :
      ensure => present,
      shell  => '/bin/bash',
      home   => '/home/admin',
      groups   => ['sudoers','user'],
      password => 'admin123',
   }
   
  group { 'sudoers' :
    ensure => present,
  }

 }

