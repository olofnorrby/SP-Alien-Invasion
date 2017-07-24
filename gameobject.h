#ifndef GAMEOBJECT_H
#define GAMEOBJECT_H

#include "renderer.h"
#include "vecmath.h"


typedef struct tGameObject{
	GfxObject gfxObj;
	vec2f	  pos;
	float 	  speed;
	double 	  angle;
	float	  scale;
	
	void 	  (*update)(struct tGameObject* Ugameobj);
	void	  (*render)(struct tGameObject* Rgameobj);
} GameObject;

extern GameObject* gameObjects[100];
void render(GameObject* RS);
extern int numGameObjects;


#endif // GAMEOBJECT_H