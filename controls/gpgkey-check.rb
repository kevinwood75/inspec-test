control "cis-1-2-1" do
  impact 1.0
  title "1.2.1 Verify CentOS GPG Key is Installed (Scored)"
  desc "CentOS cryptographically signs updates"
  describe command('rpm -q --queryformat "%{SUMMARY}\n" gpg-pubkey') do
   its('stdout') {should match /CentOS [1-9] Official Signing Key/ }
  end
end
