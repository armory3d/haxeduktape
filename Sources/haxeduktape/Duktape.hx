// Haxe Duktape
// http://duktape.org
package haxeduktape;

#if cpp

@:include("duktape.h")
@:native("duk_context")
@:structAccess
@:unreflective
extern class Duk_context {
}

#end
