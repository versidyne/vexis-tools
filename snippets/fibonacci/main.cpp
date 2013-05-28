#include <iostream>

using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char** argv) {
	int n, c, first = 0, second = 1, next;
	
	cout << "Enter the number of Fibonacci terms you wish to calculate: ";
	
	input:
	cin >> n;
	
	if ( n > 47 ) {
		cout << "Enter a number less than 48 for accurate results: ";
		goto input;
	}
	
	cout << "The first " << n << " terms of the Fibonacci series are: " << endl;
	
	for ( c = 0 ; c < n ; c++ ) {
		if ( c <= 1 ) { next = c; }
		else {
			next = first + second;
			first = second;
			second = next;
		}
		if (next > 0) { cout << ", "; }
		cout << next;
	}
	
	cout << endl;
	
	return 0;
}
