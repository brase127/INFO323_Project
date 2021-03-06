import dao.ProductCollectionDAO;
import dao.ProductDAO;
import dao.ProductJdbcDAO;
import gui.MainMenuFrame;
import java.awt.EventQueue;

public class Main {

    public static void main(String[] args) {

        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(MainMenuFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new MainMenuFrame(new ProductJdbcDAO()).setVisible(true);
            }
        });
    }
}
//Finished?
