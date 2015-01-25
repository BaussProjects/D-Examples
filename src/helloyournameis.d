import std.stdio : write, readln, writefln;

void main() {
	write("Enter your name: ");
	string name = readln(); // Reads the line input. "\n" could be stripped off using std.array.replace or array slicing readln()[0 .. $-1]
	writefln("Your name is %s", name);
	readln();
}