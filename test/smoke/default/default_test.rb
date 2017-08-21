describe file('/etc/hosts') do
  it { should be_file }
  its('content') { should match /# this hosts file is managed by Chef/ }
end
