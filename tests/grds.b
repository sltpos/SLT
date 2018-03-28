/+ dub.json:
{
    "name": "tests",
    "description": "Command-line argument test",
    "dependencies": {
        "vibe-core": {"path": "../"}
    }
}
+/
module test;

import sltpos.core.grds;
import sltpos.core.log;

import std.stdio;

shared static this()
{
	string argtest;
	readOption("grdstest", &grdstest, "Test argument");
	writeln("grdstest=", argtest);
}

void main()
{
	finalizeCommandLineOptions();
}
