#include "aliens.h"
#include "renderer.h"

GameObject alien[1];

void updateAlien(GameObject* UA){
	static int x = 3;
	if(alien[0].pos.x > 900)
		x = -x;
	if(alien[0].pos.x < 300)
		x = -x;
	UA->pos.x += x;
}

void createAliens(){
	GfxObject Aships;
	bool once = true;
	if(once == true){
		Aships = createGfxObject("../alienship.png");
		once = false;
	}
	alien[0].gfxObj = Aships;
	alien[0].gfxObj.outputHeight = 200;
	alien[0].gfxObj.outputWidth = 200;
	alien[0].pos.x = 400;
	alien[0].pos.y = 200;
	alien[0].scale = 1.0f;
	alien[0].angle = 0;
	alien[0].render = render;
	alien[0].update = updateAlien;
	
	gameObjects[numGameObjects++]= &alien[0];
}

