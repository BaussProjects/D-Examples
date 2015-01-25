import std.stdio : write, readf, readln, writefln;
import std.string : isNumeric;
import std.array : replace;
import std.conv : parse;

// Concept is the same as inputcalcultor1.d

void getNumber(out int v) {
	string vStr;
	do {
		write("Enter a number: ");
		vStr = replace(readln(), "\n", "");
	} while (!isNumeric(vStr));
	v = parse!int(vStr);
}

void main() {
	int x;
	getNumber(x);
	int y;
	getNumber(y);
	string op; // Operator holder
	do {
		write("Enter operator (+,-,*,/): ");
        op = replace(readln(), "\n", ""); // Reads the operator and strips the "\n" away. This could be done with array slicing too readln()[0 .. $-1]
	} while (op != "+" && op != "-" && op != "*" && op != "'/"); // Checks whether operator is a valid math operator, if not ask for an operator again
	final switch (op) { // A switch for the operator (final, because there is no default case.)
		case "+":
			writefln("x %s y = %s", op, (x + y)); // Add
			break;
		case "-":
			writefln("x %s y = %s", op, (x - y)); // Subtraction
			break;
		case "*":
			writefln("x %s y = %s", op, (x * y)); // Multiplication
			break;
		case "/":
			writefln("x %s y = %s", op, (x / y)); // Division
			break;
	}
	readln();
}