import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class DEMO extends JFrame{
    private JPanel panelMain;
    private JTextField txtName;
    private JButton btnClick;

    public DEMO(){
        btnClick.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(btnClick, txtName.getText() + " ,Hello"); //btnClick e chap dile text show korbe
            }
        });
    }

    public static void main(String[] args) {
        DEMO h = new DEMO(); // object banalam
        h.setContentPane(h.panelMain); //kon panel niye kaj korbe
        h.setTitle("Hello"); // title of panel
        h.setSize(300, 400); //size
        h.setVisible(true); //visible korte eta lagbe
        h.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // cross chap dile exit korte hobe
    }
}
