#!/usr/bin/env ruby
#
# saved-states.rb
#
# Allows you to persist and recover a saved copy of all your application states
#
# TODO: Add "list" command that lists out the saved states
# TODO: Unwind assumption as to where to save the state to and don't assume dir is already there
# TODO: Allow the user to exclude or include manually applications
#

end

require 'optparse'

options = {}

opt_parser = OptionParser.new do |opt|
  opt.banner = "Usage: saved-states COMMAND [name]"
  opt.separator  ""
  opt.separator  "Commands"
  opt.separator  "     save: save all application states as a recoverable session"
  opt.separator  "     recover: recover a named session with given name"
  opt.separator  ""
  opt.separator  "Options"

  opt.on("-h","--help","help") do
    puts opt_parser
  end
end

opt_parser.parse!
command = ARGV[0]
name = ARGV[1]
if name.nil? or name.empty?
  abort(opt_parser)
end

case command
when "save"
  exec("cd ~/Library/Saved\ Application\ State/;tar -cvzf #{name}.tar.gz *savedState;mv #{name}.tar.gz ~/.Saved-State-Archive")
when "recover"
  exec("cd ~/Library/Saved\ Application\ State/;cp ~/.Saved-State-Archive/#{name}.tar.gz . ;tar -xvzf #{name}.tar.gz;rm #{name}.tar.gz")
else
  puts opt_parser
end


puts #{options.inspect}