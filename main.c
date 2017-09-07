#include "renderer.h"
#include "vecmath.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "gameobject.h"
#include "background.h"
#include "player.h"
#include "text.h"
#include "aliens.h"




void close();


int main( int argc, char* args[] )
{
    // If you want the program to not launch the terminal, then go to 
    // Project->Settings->General->"This program is a GUI application" and uncheck that flag.
    
	// Start up SDL and create window of width=800, height = 600
	initRenderer(1200, 900); 
    
    // Create an object
	createBackground();
	createShip();
	createAliens();
	
	//Create the background object
	
	
	//Text
	char str[] = "Hello World!";
	int loop = 0;
	bool vaxla = true;
	
	//Get pointer to key states
	state = SDL_GetKeyboardState(NULL);


    while(true) // The real-time loop
    {
        // Handle events on the inqueue (e.g., mouse events)
        SDL_Event e;  //Event handler
        while( SDL_PollEvent( &e ) != 0 )
        {

            if( e.type == SDL_QUIT ) {   //User requests quit
                close(); 
                exit(0);
            }
			if((e.type == SDL_KEYDOWN) && (e.key.keysym.scancode == SDL_SCANCODE_C)){
				vaxla = !vaxla;
				if(vaxla){
					print = printToConsole;
				}
				else
					print = printToWindow;
			}
        }
		

        // Clear screen with a grey background color, red=0x33, blue=0x33, green=0x33, alpha=0xff. 0=minimum, 0xff=maximum.
        // Alpha is transparency: 0 = fully transparent, 0xFF = fully opaque. However, actual use of transparency requires further settings.
        SDL_SetRenderDrawColor( gRenderer, 0x33, 0x33, 0x33, 0xFF ); 
        SDL_RenderClear( gRenderer );
		
		//Update our Objects
		for(int i = 0; i< numGameObjects; i++)
			gameObjects[i]->update(gameObjects[i]);

        // Render our object(s) - background objects first, and then forward objects (like a painter)
		for(int i = 0; i< numGameObjects; i++)
			gameObjects[i]->render(gameObjects[i]);
		
        if((loop%90)==1)
			flipStr(str);
        loop++;
		print(str, 500, 150);  /* 1200 x 900 (800 x 600) */
        // This function updates the screen and also sleeps ~16 ms or so (based on the screen's refresh rate),  
        // because we used the flag SDL_RENDERER_PRESENTVSYNC in function initRenderer()
        SDL_RenderPresent( gRenderer );
		
		
    }

	close(); //Free allocated resources
	return 0;
}

void close()
{
    //Preferably, you should free all your GfxObjects, by calls to freeGfxObject(GfxObject* obj), but you don't have to.
	//freeGfxObject(&background.gfxObj);
    //freeGfxObject(&ship.gfxObj);
    
    closeRenderer(); //Free resources and close SDL
}