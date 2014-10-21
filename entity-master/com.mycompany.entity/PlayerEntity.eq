
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite player;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height();
		
		rsc.prepare_image("cutie", "cat", w*0.10, h*0.10);
		player = add_sprite_for_image(SEImage.for_resource("cutie"));
		var pw = player.get_width();
		var ph = player.get_height();
		
		player.move((w*0.5 - pw*0.5), (h*0.5 - ph*0.5));
	}

	public void tick(TimeVal now, double delta) {
		player.move(MainScene.px, MainScene.py);
	}

	public void cleanup() {
		base.cleanup();
	}
}

