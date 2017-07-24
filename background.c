#include "background.h"


GameObject background;
void createBackground(void){
	background.gfxObj = createGfxObject("../background.jpg");
	background.gfxObj.outputWidth = 1200;
	background.gfxObj.outputHeight = 900;
	background.pos.x = 600;
	background.pos.y = 450;
	background.angle = 0;
	background.scale = 1.3;
	background.render = render;
	background.update = updateBackground;
	
	
	gameObjects[numGameObjects++] = &background;
}

void updateBackground(GameObject* UB){
	/** ZOOM IN och UT **/
	if(state[SDL_SCANCODE_W]){
		UB->scale += 0.002;
	}
	if(state[SDL_SCANCODE_S]){
		UB->scale -= 0.002;
	}	
		
	/** ÖVRIGT **/
	UB->angle = fmod(UB->angle+0.02, 360);
}

