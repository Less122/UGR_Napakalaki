/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;



/**
 *
 * @author jj
 */
public class FinishGameView extends javax.swing.JDialog {

	/**
	 * Creates new form FinishGameView
	 */
	public FinishGameView(java.awt.Frame parent, boolean modal) {
		super(parent, modal);
		initComponents();
		this.addWindowListener (new WindowAdapter() {
			@Override
			public void windowClosing (WindowEvent e) {
				System.exit(0);
			}
		});
	}

	/**
	 * This method is called from within the constructor to initialize the form.
	 * WARNING: Do NOT modify this code. The content of this method is always
	 * regenerated by the Form Editor.
	 */
	@SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        CloseButton = new javax.swing.JButton();
        ExplosionGif = new javax.swing.JLabel();
        WhoWonTheGame = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        CloseButton.setBackground(new java.awt.Color(1, 1, 1));
        CloseButton.setForeground(new java.awt.Color(254, 254, 254));
        CloseButton.setText("Close");
        CloseButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CloseButtonActionPerformed(evt);
            }
        });

        ExplosionGif.setIcon(new javax.swing.ImageIcon(getClass().getResource("/GUI/definitiva-grande.gif"))); // NOI18N
        ExplosionGif.setText(" ");

        WhoWonTheGame.setFont(new java.awt.Font("Noto Sans", 1, 24)); // NOI18N
        WhoWonTheGame.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        WhoWonTheGame.setText("Example");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(WhoWonTheGame)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(CloseButton))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(ExplosionGif, javax.swing.GroupLayout.PREFERRED_SIZE, 486, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(67, Short.MAX_VALUE)
                .addComponent(ExplosionGif)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(CloseButton)
                    .addComponent(WhoWonTheGame))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void CloseButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CloseButtonActionPerformed
       System.exit(0);
    }//GEN-LAST:event_CloseButtonActionPerformed

	/**
	 * @param args the command line arguments
	 */
	
    public void finishGame(String name) {
		WhoWonTheGame.setText(name + " you are the boss.");
        this.setVisible(true);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton CloseButton;
    private javax.swing.JLabel ExplosionGif;
    private javax.swing.JLabel WhoWonTheGame;
    // End of variables declaration//GEN-END:variables
}
