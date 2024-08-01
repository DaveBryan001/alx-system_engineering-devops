# This Puppet manifest installs Flask version 2.1.0 using pip3.

exec { 'install flask':
  command => 'pip3 install Flask==2.1.0',
  path    => ['/usr/bin', '/bin'],
  unless  => 'pip3 show Flask | grep -q "Version: 2.1.0"',
}