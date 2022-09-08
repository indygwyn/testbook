#
# Cookbook:: testbook
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

%w{hello world}.each.with_index(1) do |f, i|
  puts "#{i} is #{f}"
  template "/tmp/#{f}.txt" do
    source "testfile.erb"
    variables lazy {
      {
        myfile: f,
        myfidx: i,
      }
    }
  end
end
