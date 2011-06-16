#!/usr/bin/env ruby

# This script just unmounts the time machine backup so i don't have to find a finder window to do it with
# the mouse

mount_string = `mount`
matches = mount_string.match(/(.+) on \/Volumes\/Time Machine/)
abort("No Time Machine Volume Found") if matches.nil?
mount = matches[1]
exec "diskutil unmount #{mount}"
