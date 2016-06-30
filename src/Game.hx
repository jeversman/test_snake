package;

import flash.display.Sprite;
import flash.display.Stage;
import flash.events.Event;
import flash.ui.Keyboard;
import openfl.events.KeyboardEvent;

class Game extends Sprite {
	var TILE_SIZE:Int = Const.TILE_SIZE;

	var _snake:Snake;
	var _gameContainer:Sprite;
	var _root:Stage;

	public function new(root:Stage) {
		super();
		
		_root = root;
		_root.addEventListener(Event.ENTER_FRAME, _onEnter);
		
		_initContainer();
		_initSnake();
		_initInput();
	}

	function _initInput() {
		Key.init();
	}

	function _initContainer() {
		_gameContainer = new Sprite();
		addChild(_gameContainer);
	}

	function _initSnake() {
		_snake = new Snake();
		
		for (i in 0..._snake.elems.length) {
			_snake.elems[i].x = (_snake.elems.length - i) * TILE_SIZE;
			_gameContainer.addChild(_snake.elems[i]);
		}
	}

	function _update() {
		for (elem in _snake.elems) {
			elem.x += TILE_SIZE * elem.dirX;
			elem.y += TILE_SIZE * elem.dirY;
		}
		
		if (Key.isDown(Keyboard.LEFT)) {
			trace("left");
		}
		
		if (Key.isDown(Keyboard.RIGHT)) {
			trace("right");
		}
	}

	var frame:Int = 0;
	function _onEnter(E:Event) {
		frame++;
		
		if (frame % 6 == 0) {
			_update();
		}
	}
}