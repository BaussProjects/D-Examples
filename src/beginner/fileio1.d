import std.stdio : writeln, writefln, readln;
import std.path : baseName;
import std.file : exists, readText, write;
import std.array : replace;

void main(string[] args) {
	if (args.length < 2 || !exists(args[1])) { // If there is no file argument or the argument passed as args[1] doesn't exist as a file do this
		writeln("Enter a file name: ");
		string fileName = replace(readln(), "\n", ""); // Gets the filename (strips away "\n" which could be done with array slicing too readln()[0 .. $-1])
		writeln("Enter some text: ");
		string fileContent = readln(); // Gets the content of the file
		write(fileName, fileContent); // Creates the file and writes the content to it
		writefln("%s was created and written to", fileName);
		readln();
	}
	else {
		string filePath = args[1]; // Gets the passed file from args[1]
		string fileName = baseName(filePath); // Gets the base name ex. c:\\myfiles\\myfile.txt to myfile.txt
		string fileContent = readText(filePath); // Gets the content of the file
		writefln("Opened %s", fileName);
		writeln("Content:");
		writeln(fileContent);
		readln();
	}
}