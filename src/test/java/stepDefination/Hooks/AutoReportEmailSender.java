package stepDefination.Hooks;

/**
 * Created by ashish.ranjan on 26-04-2017.
 */

import com.remedy.resources.DriverScript;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

public class AutoReportEmailSender {
    private final DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

    public void autoSendReportMail(String from, String[] to, String messageBody)
            throws MessagingException, AddressException {

        final String username = DriverScript.Config.getProperty("EmailUserName");
        final String password = DriverScript.Config.getProperty("EmailUserPwd");

        // Setup your mail server
        Properties properties = new Properties();

        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "465");
        properties.setProperty("mail.smtp.port", "465");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.setProperty("mail.smtp.socketFactory.fallback", "false");
        properties.setProperty("mail.smtp.socketFactory.port", "465");
        properties.put("mail.debug", "true");
        properties.put("mail.smtp.EnableSSL.enable", "true");
        //properties.put("mail.user", username);
        //properties.put("mail.password", password);


        // creates a new session with an authenticator and overriding
        // getPasswordAuthentication method

		/*
         * To pass the auth into session, Create a class called
		 * SMTPAuthenticator which extends Authenticator class to override
		 * getPasswordAuthentication
		 *
		 * Authenticator auth = new SMTPAuthenticator(); Session session =
		 * Session.getDefaultInstance(properties, auth);
		 *
		 * private class SMTPAuthenticator extends javax.mail.Authenticator {
		 *
		 * public PasswordAuthentication getPasswordAuthentication() { String
		 * username = "userNameOfSender"; String password = "pwdOfSender";
		 * return new PasswordAuthentication(username, password); } } Or
		 * alternatively, the below way !!
		 */

        Authenticator authentication = new Authenticator() {
            @Override
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };

        //Get the session object with authentication
        Session session = Session.getInstance(properties, authentication);
        session.setDebug(true);// Enable the debug mode

        try {

            // compose a new e-mail message
            Message messageToSend = new MimeMessage(session);

            messageToSend.setFrom(new InternetAddress(from));
            InternetAddress[] addressTo = new InternetAddress[to.length];

            // To get the array of addresses
            for (int i = 0; i < to.length; i++) {
                addressTo[i] = new InternetAddress(to[i]);
            }

            for (int i = 0; i < addressTo.length; i++) {
                messageToSend.setRecipients(Message.RecipientType.TO, addressTo);
            }

            messageToSend.setSubject("Test Execution Report- " + dateFormat.format(new Date()));

            // create email message body part
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            //messageBodyPart.setText("This is message body");
            messageBodyPart.setContent(messageBody, "text/html");

            // Create a multipart message
            Multipart messMultipart = new MimeMultipart();
            messMultipart.addBodyPart(messageBodyPart);

            // Add the attachment
            messageBodyPart = new MimeBodyPart();
            DataSource source = new FileDataSource(System.getProperty("user.dir") + "\\target\\vimalSelvam-cucumberReport\\report.html");
            messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName(dateFormat.format(new Date())+"_report.html");
            messMultipart.addBodyPart(messageBodyPart);

            // Send the complete message parts
            messageToSend.setContent(messMultipart);

            // Transport class to send our mail message
            Transport.send(messageToSend);

		/*Transport transport = session.getTransport("smtp");
        transport.connect();
        transport.send(messageToSend);
        transport.close();*/

            System.out.println("Sent message successfully....");

        } catch (AddressException ae) {
            ae.printStackTrace();
        } catch (MessagingException me) {
            me.printStackTrace();
        }
    }
}
