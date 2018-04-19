#
# InSpec resources available from https://www.inspec.io/docs/reference/resources/
#

describe command('pwsh --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match (/v6.1.0/) }
end
