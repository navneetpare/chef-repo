# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "navneetpare"
client_key               "#{current_dir}/navneetpare.pem"
chef_server_url          "https://api.chef.io/organizations/npare"
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright	 "Navneet Pare"
cookbook_license	 "All rights reserved"
cookbook_email		 "fly_with_navneet@yahoo.com"

