group 'docker' do
  action :manage
  members node[:platform_docker][:docker][:users]
end
