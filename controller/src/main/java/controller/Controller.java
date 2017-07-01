package controller;

import java.io.File;
import java.util.Observable;
import java.util.Observer;

import model.Permeability;
import model.UserOrder;
import view.Audio;
import view.Gravity;
import view.IPanel;
import view.ISprite;
import view.MapMaker;
import view.MonsterMove;
import view.SpriteType;
import view.VictoryDiamonds;
import view.Window;
import view.move.Move;

public class Controller implements IController, Observer {
	private UserOrder stackOrder = UserOrder.NOOP;
	private int SET_SIZE = 0, colonne = 0, ligne = 0, finalDiamonds = 0;
	private IPanel panel;
	private ISprite sprite;
	private MapMaker maker;
	private Move move;
	private Gravity gravity;
	private Window window;
	private MonsterMove monsterMove;
	private VictoryDiamonds victoryDiamonds;
	private Audio backSound;
	private Audio start;
	private Audio gravitySounds;
	private Audio moveSounds;
	private Audio gameOver;
	private Audio victory;
	private EndTheGame end;

	/**
	 * Constructor of Controller
	 * 
	 * @param sprite
	 * @param panel
	 * @param SET_SIZE
	 * @param maker
	 * @param window
	 * @param finalDiamonds
	 */
	public Controller(ISprite sprite, IPanel panel, int SET_SIZE, MapMaker maker, Window window, int finalDiamonds) {
		this.panel = panel;
		this.sprite = sprite;
		this.SET_SIZE = SET_SIZE;
		this.maker = maker;
		this.window = window;
		this.finalDiamonds = finalDiamonds;

		move = new Move(maker.getSprites(), SET_SIZE, window.getPanel());
		gravity = new Gravity();
		monsterMove = new MonsterMove();
		victoryDiamonds = new VictoryDiamonds();
		backSound = new Audio();
		backSound.playSound(new File("music/game.wav"), -20.0f);
		start = new Audio();
		start.playSound(new File("music/new.wav"), 40.0f);
		gravitySounds = new Audio();
		moveSounds = new Audio();
		gameOver = new Audio();
		victory = new Audio();
		end = new EndTheGame(this.panel, this.window);
	}

	/**
	 * move the character
	 */

	public final void directionControl() throws InterruptedException {
		if (sprite.getType() == SpriteType.CHARACTER) {

			Thread.sleep(50);
			maker.setAllHasMovedToFalse(maker.getSprites());
			move.setVictory(false);
			move.gameOver(false);

			colonne = sprite.getX() / SET_SIZE;
			ligne = sprite.getY() / SET_SIZE;

			switch (this.getStackOrder()) {
			case RIGHT:
				maker.setSprites(move.digRight(colonne, ligne, sprite, moveSounds));
				break;
			case LEFT:
				maker.setSprites(move.digLeft(colonne, ligne, sprite, moveSounds));
				break;
			case DOWN:
				maker.setSprites(move.digDown(colonne, ligne, sprite, moveSounds));
				break;
			case UP:
				maker.setSprites(move.digUp(colonne, ligne, sprite, moveSounds));
				break;
			case NOOP:
			default:
				break;
			}
			gravity.makeThemSlide(maker.getSprites());
			gravity.makeThemFall(maker.getSprites(), gravitySounds);

			if (move.isGameOver()) {
				backSound.stopSound();
				end.gameOver(gameOver);
			}

			monsterMove.toMoveTheMonsters(maker.getSprites(), gravitySounds);

			if (gravity.isGameOver() || monsterMove.isGameOver()) {
				backSound.stopSound();
				end.gameOver(gameOver);
			}

			if (panel.getDiamondsGet() >= finalDiamonds) {
				setExitToPermeable(maker.getSprites());
			}

			if (move.isVictory()) {
				backSound.stopSound();
				victoryDiamonds.setDirtAndBackgroundToDiamond(maker.getSprites(), SET_SIZE);
				end.victory(victory);
				victory.stopSound();
			}
			stackOrder = UserOrder.NOOP;
			panel.update();
		}
	}

	/**
	 * @return stackOrder
	 */
	public UserOrder getStackOrder() {
		return stackOrder;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see controller.IController#setStackOrder(model.UserOrder)
	 */
	public void setStackOrder(UserOrder stackOrder) {
		this.stackOrder = stackOrder;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.Observer#update(java.util.Observable, java.lang.Object)
	 */
	@Override
	public void update(Observable obs, Object obj) {
		if (obs instanceof BDKeyListener) {
			try {
				directionControl();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * Permit to exit
	 * 
	 * @param sprites
	 */
	public void setExitToPermeable(ISprite[][] sprites) {
		for (ISprite[] sousSpit : sprites) {
			for (ISprite spit : sousSpit) {
				if (spit.getType() == SpriteType.EXIT) {
					spit.setPermeability(Permeability.PERMEABLE);
				}
			}
		}
	}
}
