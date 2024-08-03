# This Puppet manifest configures the SSH client to use a specific private key and disable password authentication.

file { '/home/ubuntu/.ssh/config':
  ensure  => file,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
  content => @("EOF")
    Host your_server_alias
        HostName 54.161.237.13
        User ubuntu
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    | EOF
}
