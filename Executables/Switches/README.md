# about switches
switches can be used to alter the way the program operates.
you can apply them by adding separate lines in switches.txt followed by a -
ex:
-sfm
-noraw


# Switches
## -sfm
Will convert output to 4100 khz to be compatible with sfm. Stupid sfm.
## -noraw
This only applies when you use the record feature, normally it will output the raw recorded audio and the changed audio. This can be useful for automation, or if you just really dont care about how it sounds originally.
## -noadmin
Does not check for administrator. This may break things. Like a lot of things.



# Developer switches
## -debug
This will cancel the cleanup and pause at sensitive areas where errors may occur.
No normal user needs this. All it will do will annoy you and take up more space on your computer by not cleaning up after itself.
## -uncompiled
Changes file extensions that are called upon to uncompiled versions. (Such as .exe to .py)
## -api
(upcoming feature, however it might already have been implemented and i forgot to change this lol)
The idea is that this will read from variables in the cmd environment. This would allow it to run completely from the command line making it incredibly useful for automation. Works well with the -noraw switch.
