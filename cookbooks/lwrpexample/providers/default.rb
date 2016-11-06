action :roll_out do
  Chef::Log.info('====> Starting lwrpexample provider')
  execute 'create_lwrp_resource' do
    command "echo #{new_resource.message} > /tmp/lwrpmessage"
  end
end
action :roll_back do
  Chef::Log.info('====> Rolling back lwrpexample provider')
  execute 'clear_lwrp_resource' do
    command "echo 'rolled back' > /tmp/lwrpmessage"
  end
end
