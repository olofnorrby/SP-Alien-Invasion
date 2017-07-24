#include "player.h"


GameObject ship;


void createShip(){
	ship.gfxObj = createGfxObject(  "../ship.png" );
	ship.gfxObj.outputWidth  = 200;
	ship.gfxObj.outputHeight = 115;
	ship.pos.x = 600;
	ship.pos.y = 800;
	ship.speed = 3;
	ship.angle = 0;
	ship.scale = 1.0f;
	ship.render = render;
	ship.update = updateShip;
	
	gameObjects[numGameObjects++] = &ship;
	
}

void shake(vec2f* p){
static int t = 0;
static bool bShake = false;
static int shakeStop = 0;
    // om bShake == false, initiera shake med sannolikhet 1/60.
    //      Sätt bShake = true;
    //      Sätt shakeStop till t + (30 till 50) frames
    // om (bShake && t < shakeStop)
    //      addera omväxlande -1 resp 1 varannan frame till x,y
    // om (bShake && t >= shakeStop)
    //      sätt bShake = false;
    
    if( bShake == false && ((rand() % 60)==1) ) {
        bShake = true;
        shakeStop = t + (rand() % 20) + 30;
    }
    if( bShake && t < shakeStop) {
        p->x += 2* ((t % 3) - 1);
        p->y += ((rand() % 3) - 1); 
    }
    if( bShake && (t >= shakeStop) ) {
        bShake = false;
    }
    t++;
}

void updateShip(GameObject* UO){
	
	shake(&UO->pos);
	
	/** STYRA SKEPP **/
	if (state[SDL_SCANCODE_RIGHT]){
		UO->pos.x = (UO->pos.x+UO->speed >=1199) ? 1199:UO->pos.x+UO->speed; 
	}
	if (state[SDL_SCANCODE_LEFT]){
		UO->pos.x = (UO->pos.x-UO->speed <=0) ? 0:UO->pos.x-UO->speed; 
	}
	if (state[SDL_SCANCODE_DOWN]){
		UO->pos.y = (UO->pos.y+UO->speed >=899) ? 899:UO->pos.y+UO->speed; 
	}
	if (state[SDL_SCANCODE_UP]){
		UO->pos.y = (UO->pos.y-UO->speed <=0) ? 0:UO->pos.y-UO->speed; 
	}
	
	/** ZOOM IN och UT **/

	if(state[SDL_SCANCODE_Q]){
		UO->scale -= 0.02;
	}
	if(state[SDL_SCANCODE_E]){
		UO->scale += 0.02;
	}
	
	/** ROTERA SHEPP **/
	if(state[SDL_SCANCODE_A]){
		UO->angle -= 2.0;
	}
	if(state[SDL_SCANCODE_D]){
		UO->angle += 2.0;
	}
}
