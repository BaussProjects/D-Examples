import std.stdio : write, writeln, readln;
import std.array : replace, split;
import std.math : fmin;
import std.string : isNumeric;
import std.conv : parse;

void main() {
	writeln("Enter maximum 10 numbers (split by ' '):");
	string input = replace(readln(), "\n", ""); // Reads the input and strips away "\n" which can be done with array slicing too readln()[0 .. $-1]
	auto inputs = split(input, " "); // Splits the input by space " "
	int[] numbers; // The number array
	foreach (i; 0 .. cast(size_t)fmin(10, cast(real)inputs.length)) {
		// Loops from 0 to the length of inputs (if it's below 10, else 10)
		if (isNumeric(inputs[i])) // Checks whether the input is numeric
			numbers ~= parse!int(inputs[i]); // If it's numeric parse it and append it to the number array
	}
	writeln("Numbers:");
	writeln(numbers);
	readln();
}