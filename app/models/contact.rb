class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nowa wiadomość ze strony",
      :to => "#{Figaro.env.smtp_user_name!} <#{Figaro.env.smtp_user_name!}>",
      :from => "#{Figaro.env.smtp_user_name!} <#{Figaro.env.smtp_user_name!}>"
    }
  end
end