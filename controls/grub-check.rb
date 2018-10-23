control "cis-1-5-1" do
  impact 1.0
  title "check grub.conf"
  desc "check grub.conf"
  describe file('/etc/grub2.cfg') do
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
  end
end
