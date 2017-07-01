package view;

import static org.junit.Assert.*;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import org.junit.Test;


public class CreateMenu extends JFrame {

	private static final long serialVersionUID = 1L;
	int choice = 0;
	List<LevelObservator> observators = new ArrayList<>();

	/**
	 * Getter of observators
	 * @return observators
	 */
	public List<LevelObservator> getObservators() {
		return observators;
	}

	/**
	 * Setter of observators
	 * @param observators
	 */
	public void setObservators(List<LevelObservator> observators) {
		this.observators = observators;
	}

	/**
	 * Method which create the Menu
	 */
	public CreateMenu() {
		setSize(new Dimension(456, 557));
		this.setTitle("BoulderDash Exia ALGER");
		setLayout(new BorderLayout());
		JLabel background = new JLabel(new ImageIcon("image/menu_actual.jpg"));
		add(background);
		background.setLayout(new FlowLayout());
		JPanel boutonPane = new JPanel();
		JButton bouton2 = new JButton("Choose Level");
		JButton bouton3 = new JButton("EXIT");
		JButton bouton4 = new JButton("HELP");
		
		bouton2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				String[] level = { "Level 1", "Level 2", "Level 3", "Level 4", "Level 5" };
				JOptionPane jop = new JOptionPane();
				String name = (String) jop.showInputDialog(null, "Choose your level!", "The choise",
						JOptionPane.QUESTION_MESSAGE, null, level, level[0]);
				if (name == "Level 1") {
					choice = 1;
				}
				if (name == "Level 2") {
					choice = 2;
				}
				if (name == "Level 3") {
					choice = 3;
				}
				if (name == "Level 4") {
					choice = 4;
				}
				if (name == "Level 5") {
					choice = 5;
				}
				for (LevelObservator observator : observators) {
					observator.onLevelSelected(choice);
				}
			}
		});
		
		bouton3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				fermer();
			}
		});

		bouton4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				javax.swing.JOptionPane.showMessageDialog(null,
						"Le but du jeu est de ramasser le nombre de diamants specifique."
								+ "\nVous manipulez Rockford, un mineur. Il peut se deplacer horizontalement et verticalement."
								+ "\nIl peut creuser la terre et ramasser des diamants."
								+ "\nEn creusant, il peut faire tomber des rochers. Si un rocher lui tombe dessus, la partie est perdue."
								+ "\nLes ennemis peuvent aussi le tuer."
								+ "\nFaites tomber un rocher sur un ennemi et vous serez recompense en points et en diamants."
								+ "\nCertains murs sont speciaux : ils permettent de transformer les rochers et les diamants."
								+ "\nUne fois tous les diamants recuperes, atteignez la sortie pour terminer le niveau.");
			}
		});
		boutonPane.add(bouton2);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.getContentPane().add(boutonPane, BorderLayout.SOUTH);
		this.setVisible(true);
		boutonPane.add(bouton3);
		boutonPane.add(bouton4);
	}

	/**
	 * Getter of choice
	 * @return choice
	 */
	public int getChoice() {
		return choice;
	}
	
	@Test
	public void testGetChoice() {
	    assertEquals(choice, 0);
	}
	
	
	void fermer() {
		dispose();
	}
}