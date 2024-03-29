
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite bg;
	public static int px;
	public static int py;
	int i;
	int w;
	int h;
	int random = Math.random(5,15);
	SESprite gameover;
		
	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		AudioClipManager.prepare("bubble");
		w = get_scene_width();
		h = get_scene_height();
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

		rsc.prepare_font("myFont", "arial bold color=#534966", 65);
		rsc.prepare_image("mybg", "bg", w, h);
		bg = add_sprite_for_image(SEImage.for_resource("mybg"));
		bg.move(0,0);
		add_entity(new PlayerEntity());
		

		for(i =0; i<random; i++) {
			add_entity(new CatEntity());
			//AudioClipManager.play("bubble");
		}
		
		
	}

	public void on_pointer_move(SEPointerInfo pi) {
		px= pi.get_x();
		py= pi.get_y();
			
        if(gameover!=null) {
					switch_scene(new MenuScene());
					gameover=null;
			}	
		
	}
	
	public void cleanup() {
		base.cleanup();
	}
}