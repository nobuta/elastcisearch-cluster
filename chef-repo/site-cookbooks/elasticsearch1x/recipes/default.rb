#
# Cookbook Name:: elasticsearch1x
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'java'
include_recipe 'elasticsearch'

logging_template = resources(:template => "/etc/init.d/elasticsearch")
logging_template.cookbook "elasticsearch1x"