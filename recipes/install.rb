#
# Cookbook Name:: composer-php
# Recipe:: install
#
# Copyright 2015 Steve Buzonas
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

include_recipe 'php'

install_params = "--install-dir=#{node['composer']['install_dir']} --filename=#{node['composer']['filename']}"
install_params << " --version=#{node['composer']['version']}" unless node['composer']['version'].nil?

execute 'install_composer' do
  command %Q{php -r "readfile('https://getcomposer.org/installer');" | php -- #{install_params}}
end
