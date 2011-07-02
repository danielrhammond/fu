#!/usr/bin/env ruby
branch = ARGV.first

if branch
  if system("git branch #{branch}")
    system("git checkout #{branch}")
  else
    puts "Error branching"
  end
else
  puts "Usage: bco.rb [branchname]\nruns:\ngit branch [branchname]\ngit checkout [branchname]"
end