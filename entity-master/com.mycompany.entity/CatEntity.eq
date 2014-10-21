
/*
* CatEntity
* Created by Eqela Studio 2.0b7.4
*/
public class CatEntity : SEEntity
{
public static int mx;
public static int my;
public static int ph;
public static int pw;
SESprite monster;
SESprite gameover;
int w;
int h;
int umx;
int umy;
int vx;
int vy;
int speed;
public void initialize(SEResourceCache rsc) {
	speed = Math.random(10,75);


base.initialize(rsc);
w = get_scene_width();
h = get_scene_height();
rsc.prepare_font("myFont", "arial bold color=#534966", 65);
rsc.prepare_image("mymonster", "dog", w*0.10, h*0.10);
monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
pw = monster.get_width();
ph = monster.get_height();
monster.move(Math.random(0,w), Math.random(0,h));
}
public void tick(TimeVal now, double delta) {
mx = monster.get_x();
my = monster.get_y();
int px = MainScene.px;
int py = MainScene.py;


vx = (px-mx)/(Math.random(10,100)+speed);
vy = (py-my)/(Math.random(10,100)+speed);
umx = mx+vx;
umy = my+vy;
monster.move(umx, umy);
if(vx==0&&vy==0) {
		gameover= add_sprite_for_text("GAME OVER", "myFont");
				gameover.move(w*0.5-gameover.get_width()-(gameover.get_width()*0.5), h*0.5-gameover.get_height()-(gameover.get_height()*0.5));

}
}
public void cleanup() {
base.cleanup();
}
}
