import std.stdio : write, readln, writefln;
import std.string : isNumeric;
import std.array : replace;
import std.conv : parse;

void getNumber(out int v) { // Out parameter to set the value of the passed parameter
	string vStr; // Value string holder
	do {
		write("Enter a number: ");
		vStr = replace(readln(), "\n", ""); // Reads the input and replaces "\n" which could be done with array slicing too readln()[0 .. $-1]
	} while (!isNumeric(vStr)); // Checks whether the input is a number, else ask again
	v = parse!int(vStr); // Parses the input to an int
}

void main() {
	int x;
	getNumber(x); // Gets the x number
	int y;
	getNumber(y); // Gets the y number
	writefln("x + y = %s", (x + y)); // Adds them together and prints the value
	readln();
}