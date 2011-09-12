===============================================================================

# fu

This is the repository of my scripts (shell scripts and ruby) that i hack up to make my day more productive and enjoyable. No guarantees anything here is useful to anyone other than myself, this repository is mostly for my own documentation and version control, however feel free to use any of these scripts in any way that you please. cheers

Includes: 
	rake-completion.rb from Xavier Shay (http://rhnh.net)
	git-completion.bash from Shawn O. Pearce <spearce@spearce.org>

===============================================================================

# clear-states

destroys all the saved application states (Mac os X Lion)

# clear-derived-data.sh

destroys everything in Xcode's Derived Data Directory

===============================================================================

# gh-open.rb

gh-open.rb is a simple script that pulls the github address out of your git config file for your local directory and then opens up a web browser to that page. It can optionally take any one of the following arguments:

- commits
- network
- pulls
- forks
- issues
- wiki
- graphs

which all pull up the relevant page. 

example:

gh-open network # opens up the network view of the current git repository your in

===============================================================================

# saved-states.rb

Saved Application State Manger for Mac OS X that allows user to save a copy of the current state of all applications and recover it later, cool when used with clear-states as a ghetto-state manager, see TODO's in the saved-states.rb

===============================================================================

# tm-unmount.rb

unmounts my time machine hard drive

