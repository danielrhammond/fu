# fu

This is the repository of my scripts (shell scripts and ruby) that i hack up to make my day more productive and enjoyable. No guarantees anything here is useful to anyone other than myself, this repository is mostly for my own documentation and version control, however feel free to use any of these scripts in any way that you please. cheers

# clear-derived-data.sh

destroys everything in Xcode's Derived Data Directory

# tm-unmount.rb

unmounts my time machine harddrive from the commandline

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

# bco.rb

bco.rb [branchname] is a simple alias to the following command sequence:
git branch [branchname]
git checkout [branchname]