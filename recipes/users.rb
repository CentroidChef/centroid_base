group 'oinstall' do
  gid 1001
  append true
end

group 'dba' do
  gid 1002
  append true
end

user 'oracle' do
  uid 1001
  gid 1001
  home '/home/oracle'
  shell '/bin/bash'
end

user 'grid' do
  uid 1002
  gid 1001
  home '/home/grid'
  shell '/bin/bash'
end

group 'oinstall' do
  members %w(oracle grid)
  action :modify
end

group 'dba' do
  members %w(oracle grid)
  action :modify
end
