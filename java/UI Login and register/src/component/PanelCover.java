package component;

import java.awt.*;

public class PanelCover extends javax.swing.JPanel {
    public PanelCover() {
        //initComponents();
        setOpaque(false);
    }

    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
        GradientPaint gra = new GradientPaint(0,0, new Color(35,166,97), 0, getHeight(), new Color(22, 116, 66));
        g2.setPaint(gra);
        g2.fillRect(0,0, getWidth(), getHeight());
        super.paintComponent(g);
    }
}
