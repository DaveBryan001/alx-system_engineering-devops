# This Puppet manifest installs Flask version 2.1.0 using pip3.

python::pip { 'flask':
  ensure       => '2.1.0',
  pip_provider => 'pip3',
}