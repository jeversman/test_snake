package;

import flash.display.Sprite;

class Snake {

	public var elems:Array<SnakeElem> = [];

	public function new() {
		_initElems();
	}

	public function _initElems() {
		for (i in 0...Const.SNAKE_LENGTH) {
			var elem:SnakeElem = new SnakeElem();
			elems.push(elem);
		}
	}
}

class SnakeElem extends Sprite {
	public var dirX:Int = 1;
	public var dirY:Int = 0;

	public function new() {
		super();
		
		graphics.beginFill(0xFF0000);
		graphics.drawRect(0, 0, Const.TILE_SIZE, Const.TILE_SIZE);
		graphics.endFill();
	}
}

enum Direction {
	Up;
	Right;
	Down;
	Left;
}