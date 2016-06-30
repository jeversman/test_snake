package;

import openfl.events.KeyboardEvent;

class Key {
	static var kcodes = new Array<Null<Int>>();
	
	public static function init() {
		var stage = flash.Lib.current.stage;
		
		stage.addEventListener(KeyboardEvent.KEY_DOWN, _onDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, _onUp);
	}

	public static function _onDown(e:KeyboardEvent) {
		kcodes[e.keyCode] = 1;
	}

	public static function _onUp(e:KeyboardEvent) {
		kcodes[e.keyCode] = null;
	}

	public static function isDown(code):Bool {
		return kcodes[code] != null;
	}

}