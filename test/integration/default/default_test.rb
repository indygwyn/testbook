# Chef InSpec test for recipe testbook::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe port(80), :skip do
  it { should_not be_listening }
end

%w{hello world}.each.with_index(1) do |f, i|
  describe file("/tmp/#{f}.txt") do
    its("content") { should match(/Index #{i} is #{f}/) }
  end
end
