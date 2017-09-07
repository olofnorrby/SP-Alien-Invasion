#ifndef PLAYER_H
#define PLAYER_H

#include "gameobject.h"

extern GameObject ship;
void shake(vec2f* p);
void updateShip(GameObject* UO);
void createShip();

#endif //PLAYER_H