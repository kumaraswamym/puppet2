class base {
   file {'/etc/welcome' :

        ensure => file,
        content => template("base/welcome.erb"),
        owner  => user,
        group  => user,
        mode  => '0644',
   }

  include base::rc
  include base::variables
}
