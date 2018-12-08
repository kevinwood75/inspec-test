control 'tmp' do
  impact 0.7
  title 'tmp'
  desc "tmp"
  describe file ('/tmp') do
    it { should be_directory }
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
  end
end 
