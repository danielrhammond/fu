#!/usr/bin/env ruby
url = nil
if File::exists?(".git/config")
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
    github_url = "https://github.com/#{url}/#{suffix}"
    puts "Opening: #{github_url}"
    exec("open #{github_url}")
  end
else
  puts "Error: could not find git repository, Opening github.com"
  exec("open https://github.com")  
end
