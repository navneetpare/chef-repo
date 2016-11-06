class Chef::Recipe::IPAddressHelper
  def self.netmask(ipaddress)  # self keyword defines a class method
    IPAddress(ipaddress).netmask
  end
end
