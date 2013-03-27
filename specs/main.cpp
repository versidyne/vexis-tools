#include <cstdlib>
#include <iostream>

// define operating system
#include "os.h"

using namespace std;

int main(int argc, char *argv[])
{
	
	// Display type sizes
    cout << "The size of an int is:\t\t" << sizeof(int) << " bytes.\n";
    cout << "The size of a short is:\t\t" << sizeof(short) << " bytes.\n";
    cout << "The size of a long is:\t\t" << sizeof(long) << " bytes.\n";
    cout << "The size of a char is:\t\t" << sizeof(char) << " bytes.\n";
    cout << "The size of a float is:\t\t" << sizeof(float) << " bytes.\n";
    cout << "The size of a double is:\t" << sizeof(double) << " bytes.\n";
    cout << "The size of a bool is:\t\t" << sizeof(bool) << " bytes.\n";
    
    // Display OS
    #if defined OS_WIN
    cout << "The operating system is:\tWindows.\n";
    #elif defined OS_UNIX
    cout << "The operating system is:\tUNIX.\n";
    #elif defined OS_ANDROID
    cout << "The operating system is:\tAndroid.\n";
    #else
    cout << "The operating system is:\tUnknown.\n";
    #endif
    
    // Pause
    //cout << "Press [Enter] to continue...";
    //cin.get();

    return EXIT_SUCCESS;

}
