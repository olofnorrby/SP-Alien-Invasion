#include "gameobject.h"


GameObject* gameObjects[100];
int numGameObjects = 0;

void render(GameObject* RS){
	renderGfxObject(&RS->gfxObj, RS->pos.x, RS->pos.y, RS->angle, RS->scale);
}