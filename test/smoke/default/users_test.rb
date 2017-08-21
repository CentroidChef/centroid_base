describe user('oracle') do
  it { should exist }
  its('uid') { should eq 1001 }
  its('gid') { should eq 1001 }
  its('home') { should eq '/home/oracle' }
  its('shell') { should eq '/bin/bash' }
  its('groups') { should eq %w(oinstall dba) }
end

describe user('grid') do
  it { should exist }
  its('uid') { should eq 1002 }
  its('gid') { should eq 1001 }
  its('home') { should eq '/home/grid' }
  its('shell') { should eq '/bin/bash' }
  its('groups') { should eq %w(oinstall dba) }
end

describe group('oinstall') do
  it { should exist }
  its('gid') { should eq 1001 }
end

describe group('dba') do
  it { should exist }
  its('gid') { should eq 1002 }
end
