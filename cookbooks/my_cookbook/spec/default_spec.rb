require 'chefspec'
describe 'my_cookbook::default' do
  let(:chef_run){
   ChefSpec::ServerRunner.new(
    platform:'centos', version:'7.2.1511'
    ).converge(described_recipe)
   }

   it 'creates a greetings file, containing the platform name' do
    expect(chef_run).to render_file(*'/tmp/greeting.txt').with_content('Hello! centos!')
   end
end
