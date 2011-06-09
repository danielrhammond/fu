#!/usr/bin/env ruby
url = nil
File.open(".git/config").each do |line| 
	if line.match("git@github.com:(.+).git")
		url = line.match("git@github.com:(.+).git")[1]
		break 
	end
end
if url.nil?
  puts "Error: Could not find github url in .git/config, Opening github.com"
  exec("open https://github.com/")
else 
  suffix = (ARGV.first || "")
  exec("open https://github.com/#{url}/#{suffix}")
end
