import ModelAppleDump

var renderer = "human"
if CommandLine.argc > 1 {
    renderer = CommandLine.arguments [1]
}
var type = "all"
if CommandLine.argc > 2 {
    type = CommandLine.arguments [2]
}

Dump.run(renderer: renderer, type: type)
