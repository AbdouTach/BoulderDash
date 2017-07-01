package view.element;

import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import model.Permeability;
import view.SpriteType;

public class Background extends Sprite {

	/**
	 * Constructor of Background
	 * @param x
	 * @param y
	 */
	public Background(int x, int y) {
		super();
		this.permeability = Permeability.PERMEABLE;
		this.x = x;
		this.y = y;
		this.type = SpriteType.BACKGROUND;
		
		try {
			image = ImageIO.read(new File("image/03.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
