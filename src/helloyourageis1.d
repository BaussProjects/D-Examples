import std.stdio : write, readln, writefln;
import std.string : isNumeric;
import std.array : replace;

void main() {
	string age; // The string holder for the age
	do {
		write("Enter your age: ");
		// Reads the age from the current line
		// readln() appends the new line, we simply strips it off
		// This could be done using slices too readln()[0 .. $-1]
		age = replace(readln(), "\n", "");
	} while (!isNumeric(age)); // While the age isn't numeric, simply ask for the age again
	
	writefln("Your age is %s", age);
	readln();
}