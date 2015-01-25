import std.stdio : write, readln, writefln;
import std.string : isNumeric;
import std.array : replace;
import std.conv : parse;

void main() {
	// Concept is the same as helloyourageis1.d
	string ageStr;
	do {
		write("Enter your age: ");
		ageStr = replace(readln(), "\n", "");
	} while (!isNumeric(ageStr));
	// Parses the result to an integer
	int age = parse!int(ageStr);
	
	writefln("Your age is %s", age);
	readln();
}