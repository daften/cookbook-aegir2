aegir2 CHANGELOG
================

This file is used to list changes made in each version of the aegir2 cookbook.

0.1.8 (2014-12-29)
------------------
- Dieter Blomme - Allow my.cnf overrides
- Dieter Blomme - Use 16M as the default max_allowed_packet

0.1.7 (2014-12-28)
------------------
- Dieter Blomme - Allow php.ini overrides
- Dieter Blomme - Use 256M as the default memory_limit

0.1.6 (2014-12-28)
------------------
- Dieter Blomme - Use a rakefile for travis testing (foodcritic only ATM)
- Dieter Blomme - Add the basics for kitchen testing
- Dieter Blomme - Update the dependency on mysql cookbook so the server recipe exists.
- Dieter Blomme - Add the apt dependency for apt_repository.

0.1.5 (2014-09-11)
------------------
- Dieter Blomme - Add ssh_keygen recipe to have a key for the aegir user created

0.1.4 (2014-09-11)
------------------
- Dieter Blomme - Add recipe to add extensions by using a variable
- Dieter Blomme - Foodcritic fixes

0.1.3 (2014-09-08)
------------------
- Dieter Blomme - Add LWRP for aegir2 extensions

0.1.2 (2014-08-26)
------------------
- Dieter Blomme - Fixed a bug with the hostname
- Dieter Blomme - Add berkshelf file (+ Gemfile and Thorfile)

0.1.1 (2014-06-25)
------------------
- Dieter Blomme - Fixed a bug with the template file, wrong keys were used.

0.1.0 (2014-06-24)
------------------
- Dieter Blomme - Initial release of aegir2. Support for package install with apache
