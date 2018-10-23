control 'tmp-1.0' do
  impact 0.7
  title 'Create /tmp/directory'
  describe file ('/tmp') do
    it { should be_directory }
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
  end
end 
