name             'aegir2'
maintainer       'Picabit'
maintainer_email 'info@picabit.be'
license          'Apache 2.0'
description      'Hosting System for Drupal Sites'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           "aegir2", "Install aegir with the chosen method (default: package)"
recipe           "aegir2::package", "Install aegir from package"
recipe           "aegir2::script", "Install aegir with nginx and php-fpm"
recipe           "aegir2::mysql_secure", "Secure mysql installation"

%w{ debian ubuntu }.each do |os|
  supports os
end

%w{ mysql }.each do |cb|
  depends cb
end
