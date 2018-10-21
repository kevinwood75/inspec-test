describe file('/proc/cpuinfo') do
  its('size') { should be <= 120 }
end
