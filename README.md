aegir2 Cookbook
===============

[Aegir][] is a hosting system for deploying and managing large networks of
[Drupal][] sites. This collection of recipes automate [Aegir][] setup,
specifically for aegir2.

This cookbook was started as a fork of https://github.com/yevgenko/cookbook-aegir, but was so different, I created a new repository. Thanks for yevgenko for the inspiration!

Requirements
------------

## Cookbooks:

* apt (to update the package repositories)
* mysql (to install mysql-server properly)

## Platforms
- Debian/Ubuntu

Attributes
----------

* `node['aegir2']['install_method']` - Install method for aegir
* `node['aegir2']['frontend']` - The URL for the aegir frontend
* `node['aegir2']['admin_email']` - The admin email for the aegir site
* `node['aegir2']['webserver']` - The web server aegir should use.

Usage
-----
Simply include the default recipe to get aegir2 installed with the default package-based method. Different install methods and servers will be supported in future versions. You can set a custom admin email and frontend URL by using attributes.

### Usage in roles:
```ruby
name "aegir2"
description "aegir2 role"
run_list "recipe[aegir2::default]"
default_attributes "aegir2" => {
  "admin_email" => "another@email.please"
}
```

Contributing
------------
Contributions can be made by using the GitHub Pull Request system.

License and Authors
-------------------

* Author:: Dieter Blomme (dieterblomme@gmail.com

Copyright:: 2013-2014, Picabit

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
)


[Aegir]:http://www.aegirproject.org/
[Drupal]:http://www.drupal.org/
