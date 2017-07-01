package controller;

import java.io.File;

import javax.swing.JOptionPane;

import view.Audio;
import view.IPanel;
import view.Window;

public class EndTheGame {
	private IPanel panel;
	private Window window;
	
	/**
	 * Constructon of EndTheGame 
	 *
	 * @param panel
	 * @param window
	 */
	public EndTheGame(IPanel panel, Window window){
		this.panel = panel;
		this.window = window;
	}
	
	/**
	 * Execute the gameOver routine
	 * 
	 * @param audio
	 */
	public void gameOver(Audio audio){
		panel.update();
		JOptionPane.showMessageDialog(null, "Game Over!");
		audio.playSound(new File("music/GameOverSound.wav"), 20.0f);
		window.dispose();
	}
	
	/**
	 * Execute the victory routine
	 */
	public void victory(Audio audio){
		audio.playSound(new File("music/victory.wav"), 10.0f);
		panel.update();
		JOptionPane.showMessageDialog(null, "Victory!");
		window.dispose();
	}
}
