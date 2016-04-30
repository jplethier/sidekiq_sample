# Mailer for user related emails.
class HelloMailer < ActionMailer::Base
  default from: 'jplethier@gmail.com'

  def hello(mail_to)
    mail(to: mail_to, subject: 'Testando email')
  end
end
