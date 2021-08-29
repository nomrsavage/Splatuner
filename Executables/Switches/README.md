# about switches
switches can be used to alter the way the program processes.
you can apply them by adding separate lines in switches.txt followed by a -
ex:
-desfm
-noraw


## -debug
This will cancel the cleanup and pause at sensitive areas where errors may occur.
No normal user needs this. All it will do will annoy you and take up more space on your computer by not cleaning up after itself.
## -nosfm
Will boost output quality to 48khz, (instead of 41khz) but it will not be compatible with sfm. Stupid sfm.
## -noraw
This only applies when you use the record feature, normally it will output the raw recorded audio and the changed audio. This can be useful for automation, or if you just really dont care about how it sounds.
## -api
(upcoming feature, however it might already implemented implemented and i forgot to change this lol)
The idea is that this will read from variables in the cmd environment. This would allow it to run completely from the command line making it incredibly useful for automation. Works well with the -noraw switch.
## -noadmin
Does not check for administrator. This may break things. Like a lot of things. (does not apply for release shortcut)