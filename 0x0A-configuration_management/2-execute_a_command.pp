# This Puppet manifest kills a process named 'killmenow' using pkill.

exec { 'kill killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => ['/usr/bin', '/bin'],
  onlyif  => 'pgrep killmenow',
}
