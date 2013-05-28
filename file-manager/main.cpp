#include <fstream>
#include <iostream>

using namespace std;

// returns 1 on error
int main() {
	
	char fileName[80];
	char buffer[255];
	
	cout << "Please enter a file name: ";
	cin >> fileName;
	
	ifstream fin(fileName);
	
	// already exists?
	if (fin) {
		
		cout << "Current file contents:\n";
		
		char ch;
		
		while (fin.get(ch))
			cout << ch;
		
		cout << "\n***End of file contents.***\n";
		
	}
	
	fin.close();
	
	cout << "\nOpening " << fileName << " in append mode...\n";
	
	ofstream fout(fileName,ios::app);
	
	if (!fout) {
		cout << "Unable to open " << fileName << " for appending.\n";
		return(1);
	}
	
	cout << "\nEnter text for the file: ";
	
	cin.ignore(1,'\n');
	cin.getline(buffer,255);
	
	fout << buffer << "\n";
	
	fout.close();
	
	fin.open(fileName);  // reassign existing fin object!
	
	if (!fin) {
		cout << "Unable to open " << fileName << " for reading.\n";
		return(1);
	}
	
	cout << "\nHere’s the contents of the file:\n";
	
	char ch;
	
	while (fin.get(ch))
		cout << ch;
	
	cout << "\n***End of file contents.***\n";
	
	fin.close();
	
	return 0;
	
}
