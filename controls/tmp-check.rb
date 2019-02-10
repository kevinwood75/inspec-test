control 'tmp' do
  impact 0.7
  title 'tmp'
  desc "tmp"
  tag category: 'security'
  tag technology: 'rhel'
  describe file ('/tmp') do
    it { should be_directory }
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
  end
end 
