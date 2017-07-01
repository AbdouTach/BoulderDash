package view.element;

import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import model.Permeability;
import view.SpriteType;

public class Rock extends Sprite{
	
	/**
	 * Constructor of Rock
	 * @param x
	 * @param y
	 */
	public Rock(int x, int y){
		super();
		this.permeability = Permeability.BLOCKING;
		this.x = x;
		this.y = y;
		this.type = SpriteType.ROCK;
		
		try {
			image = ImageIO.read(new File("image/boule1.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
