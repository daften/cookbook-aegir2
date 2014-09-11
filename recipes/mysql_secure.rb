#
# Cookbook Name:: aegir2
# Recipe:: mysql_secure
#
# Author:: Dieter Blomme <dieterblomme@gmail.com>
#
# Copyright 2013-2014, Picabit.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

execute "Secure MySQL Installation" do
  command "mysql -u root #{node['mysql']['server_root_password'].empty? ? '' : '-p' }#{node['mysql']['server_root_password']} < /tmp/mysql_secure_installation.sql"
  action :nothing
end

cookbook_file "/tmp/mysql_secure_installation.sql" do
  source "mysql_secure_installation.sql"
  notifies :run, "execute[Secure MySQL Installation]", :immediately
end
