control "cis-1-2-2" do
  impact 1.0
  title "1.2.2 Verify that gpgcheck in Globally"
  desc "The gpgcheck option"
  describe file('/etc/yum.conf') do
    its('content') { should match /gpgcheck=1/ }
  end
end
