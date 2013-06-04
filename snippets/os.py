import sys

if sys.platform.startswith('linux'):
    print("You're using Linux.")
elif sys.platform.startswith('win32'):
    print("You're using Windows.")
    print("Press [Enter] to continue...")
    input()
elif sys.platform.startswith('cygwin'):
    print("You're using Cygwin.")
elif sys.platform.startswith('darwin'):
    print("You're using Mac OSX.")
elif sys.platform.startswith('freebsd'):
    print("You're using Free BSD.")
elif sys.platform.startswith('os2'):
    print("You're using OS/2.")
elif sys.platform.startswith('os2emx'):
    print("You're using OS/2 EMX.")
else:
	print("Unable to determine your system.")
