package Main;

import component.PanelCover;

import javax.swing.*;

public class Main extends javax.swing.JFrame {

    private MigLayout layout;
    private PanelCover cover;
    private JPanel bg;
    public Main()
    {
        //initComponents();
    }

    public static void main(String[] args) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Main().setVisible(true);
            }
        });
    }


}
