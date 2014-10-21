

/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
	SESprite bg;
	SESprite title;
	SESprite play;
	int w;
	int h;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_font("myFont", "arial bold color=#534966", 65);
		rsc.prepare_image("mybg", "menubg", get_scene_width(), get_scene_height());
		w=get_scene_width();
		h=get_scene_height();
		bg = add_sprite_for_image(SEImage.for_resource("mybg"));
		bg.move(0,0);

		title = add_sprite_for_text("Run For Your Life", "myFont");
		play = add_sprite_for_text("PLAY", "myFont");

		title.move(w*0.5-title.get_width()*0.5,(h*0.5-title.get_height()*0.5)-150 );
		play.move(w*0.5-play.get_width()*0.5,h*0.5-play.get_height()*0.5);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(w*0.5-play.get_width()*0.5,h*0.5-play.get_height()*0.5,play.get_width(), play.get_height() )) {
			switch_scene(new MainScene());
		}
          
        }


	public void cleanup() {
		base.cleanup();
	}
}
