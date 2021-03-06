# Linux config with a focus on Sway
My Linux configuration patchworked together from ideas I liked from other people's.

## Goal
My goal in creating my own config is to stay as close as I can to default while not hindering my ability to work productively within a Linux environment. This should also give me the ability to learn some shell and some more about Linux.

### Lessons learnt
* used ln for the first time to add files in different directories to a git repo. (read into inodes and how the Linux filesystem works)
* learning to use grep and sed to get output and transform it to display on swaybar (learn about awk and how I could make this more efficient)
* used awk to match a line in output and print some of the arguments in different order
* used chmod +x to enable execution of a custom script which is in the PATH
* cat to output the contents of a file to the command line
* chown {user} {dir} to take ownership of a directory removing the need for sudo

### Issues remaining
* multi-monitor scenario doesn't work too well
* screen flickering occurs on all wayland distros, however this is limited to my own device
