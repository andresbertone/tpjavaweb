package entidades;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	
	public boolean enviarCorreo (String asunto, String mensaje, String para) throws Exception{
		boolean enviado = true;
		try {
			String cuenta = "fedebertone123456789@gmail.com";
			String password = "juanbjusto1750";
			String host = "smtp.gmail.com";
			Properties prop = System.getProperties();
			prop.put("mail.smtp.starttls.enable","true");
			prop.put("mail.smtp.host",host);
			prop.put("mail.smtp.user", cuenta);
			prop.put("mail.smtp.password", password);
			prop.put("mail.smtp.port", "587");
			prop.put("mail.smtp.auth","true");
				
			Session session = Session.getDefaultInstance(prop);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(cuenta));
				
			message.addRecipients(Message.RecipientType.TO, para);
			message.setSubject(asunto);
			message.setText(mensaje);
			Transport transport = session.getTransport("smtp");
			transport.connect(cuenta, password);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			enviado = false;
		}
		return enviado;
	}
}
