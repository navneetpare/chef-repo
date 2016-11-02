Vagrant.configure("2") do |config|
	config.vm.box = "navneet-centos-7.2"
	config.omnibus.chef_version = :latest
	config.ssh.username = "vagrant"
	config.ssh.private_key_path = "~/.ssh/id_rsa_vagrant"
	config.vm.provision :chef_client do |chef|
		chef.provisioning_path = "/etc/chef"
		chef.chef_server_url = "https://api.chef.io/organizations/npare"
		chef.validation_key_path = ".chef/npare-validator.pem"
		chef.validation_client_name = "npare-validator"
		chef.node_name = "centos1"
	end
end
