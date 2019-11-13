import ModelAppleDump

var renderer = "human"
if CommandLine.argc > 1 {
    renderer = CommandLine.arguments [1]
}

Dump.run(renderer: renderer)
