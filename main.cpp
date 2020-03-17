#include <iostream>
#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <cmath>
using namespace std;
using namespace sf;

const int cWindth = 1200 , cHeight = 700 ;
float koeff_x=(float)1/100 , koeff_y=(float)-1/100;
float window_left_x = cWindth*koeff_x/-2 , window_left_y=cHeight*koeff_y/-2  ;
Uint8 *pixels = new Uint8 [cWindth*cHeight*4] ;

void function_draw(RenderWindow &);

int main(){
    RenderWindow main_window(VideoMode(cWindth,cHeight),"Test");
    Event main_event;
    function_draw(main_window);
    while(main_window.isOpen()){
        while(main_window.pollEvent(main_event)){
            switch(main_event.type){
                case Event::KeyPressed:
                    switch(main_event.key.code){
                        case Keyboard::Escape:
                            main_window.close();
                            break;
                    }
                    break;
                case Event::Closed:
                    main_window.close();
                    break;
                case Event::MouseButtonPressed:
                    window_left_x=window_left_x+Mouse::getPosition(main_window).x*koeff_x-cWindth*koeff_x/2;
                    window_left_y=window_left_y+Mouse::getPosition(main_window).y*koeff_y-cHeight*koeff_y/2;
                    window_left_x=cWindth*koeff_x/4+window_left_x;
                    window_left_y=cHeight*koeff_y/4+window_left_y;
                    koeff_y/=2;
                    koeff_x/=2;
                    function_draw(main_window);
                    break;
            }
        }
    }
}

void function_draw(RenderWindow &main_window){
    main_window.clear(Color::White);
    for(int i = 0 ; i < cHeight*cWindth ; i++)
        pixels[i*4+3]=0;
    for(float i = 0 ; i < cHeight ; i++)
        for(float j = 0 ; j < cWindth ; j++){
            float x = j * koeff_x + window_left_x , y = i * koeff_y + window_left_y ;
            //if((int)j%100==0)cout << x << ' ' << y << endl ;
            if(abs(x)<1e-6||abs(y)<1e-6) {
                pixels[(int) (i * cWindth + j) * 4] = 0;
                pixels[(int) (i * cWindth + j) * 4 + 1] = 0;
                pixels[(int) (i * cWindth + j) * 4 + 2] = 0;
                pixels[(int) (i * cWindth + j) * 4 + 3] = 255;
            } else{
                float tmp_x;
                for(int i1 = 0 ; i1 < 4002 ; i1++){
                    tmp_x=x;
                    x=x*x-y*y+j * koeff_x + window_left_x;
                    y=2*x*y+i * koeff_y + window_left_y;
                    if(x*x+y*y>4) {
                        if(i1!=0) {
                            pixels[(int) (i * cWindth + j) * 4] = 0;
                            pixels[(int) (i * cWindth + j) * 4 + 1] = i1 *10;
                            pixels[(int) (i * cWindth + j) * 4 + 2] = 0;
                            pixels[(int) (i * cWindth + j) * 4 + 3] = 255;
                        }break;
                    }
                    if(i1==40){
                        pixels[(int) (i * cWindth + j) * 4] = 255;
                        pixels[(int) (i * cWindth + j) * 4 + 1] = 0;
                        pixels[(int) (i * cWindth + j) * 4 + 2] = 0;
                        pixels[(int) (i * cWindth + j) * 4 + 3] = 255;
                        break;
                    }
                }
            }
        }
    Image im1;
        im1.create(cWindth,cHeight,pixels);
        im1.saveToFile("wtf.png");
    Texture tex1;
    tex1.create(cWindth,cHeight);
    tex1.update(pixels);
    Sprite sp1;
    sp1.setPosition(0,0);
    sp1.setTexture(tex1);
    main_window.draw(sp1);
    main_window.display();
}
