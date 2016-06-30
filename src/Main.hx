package;

import openfl.display.Sprite;
import openfl.Lib;
import Game;

class Main extends Sprite {
	
	public function new() {
		super();
		
		_startGame();
	}

	function _startGame() {
		var game:Game = new Game(flash.Lib.current.stage);
		addChild(game);
	}
}
