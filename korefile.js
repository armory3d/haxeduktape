var project = new Project('haxeduktape');

project.addFile('cpp/duktape/**');
project.addIncludeDir('cpp/duktape');

return project;
