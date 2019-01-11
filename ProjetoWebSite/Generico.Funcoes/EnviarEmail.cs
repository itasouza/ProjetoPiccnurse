using System;
using System.Net.Mail;

namespace Generico.Funcoes
{
   public class EnviarEmail
    {
        public string Email(string mensagem, string nome, string email)
        {
            string recnome = nome;
            string recemail = email;
            string recmensagem = mensagem;

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("itamarcontatosuporte@gmail.com", "");
            MailMessage mail = new MailMessage();
            mail.Sender = new System.Net.Mail.MailAddress("itamarcontatosuporte@gmail.com", "ENVIADOR");
            mail.From = new MailAddress(email, "Recuperação de Senha");
            mail.To.Add(new MailAddress(email));
            mail.Subject = "Recuperação de Senha do site!";
            mail.Body = recmensagem;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                return "Ocorreram problemas no envio do e-mail. Erro = " + ex.Message;
            }
            finally
            {
                mail = null;
            }

            return "OK";
        }
  
    }
}
