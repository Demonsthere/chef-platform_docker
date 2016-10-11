execute 'Add docker key' do
  command 'apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D'
  action :run
end

template '/etc/apt/sources.list.d/docker.list' do
  source 'docker.list.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create_if_missing
end

execute 'apt-get update' do
  action :run
end

package 'docker-engine' do
  action :upgrade
end
