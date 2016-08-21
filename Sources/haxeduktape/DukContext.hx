// Haxe Duktape
// http://duktape.org
package haxeduktape;

#if cpp

import haxeduktape.Duktape;

@:headerCode('
#include <duktape.h>
')

class DukContext {
	public var ctx:cpp.Pointer<Duk_context>;

	public function new() {
		untyped __cpp__("ctx = duk_create_heap_default()");
	}

	public function evalString(string:String) {
		untyped __cpp__("duk_eval_string(ctx, string)");
	}

	public function destroyHeap() {
		untyped __cpp__("duk_destroy_heap(ctx)");
	}

	public function putGlobalString(string:String) {
		untyped __cpp__("duk_put_global_string(ctx, string)");
	}

	public function pushGlobalObject() {
		untyped __cpp__("duk_push_global_object(ctx)");
	}

	public function pushObject() {
		untyped __cpp__("duk_push_object(ctx)");
	}

	// public function putFunctionList() {
	// 	untyped __cpp__('
	// 	const duk_function_list_entry my_module_funcs[] = {
	// 	    { "tweak", do_tweak, 0 },
	// 	    { NULL, NULL, 0 }
	// 	}');

	// 	untyped __cpp__("duk_put_function_list(ctx, -1, my_module_funcs)");
	// }

	public function putPropString(string:String) {
		untyped __cpp__("duk_put_prop_string(ctx, -2, string)");
	}

	public function pop() {
		untyped __cpp__("duk_pop(ctx)");
	}
}

#else
class DukContext {
	public function new() { }
}
#end
