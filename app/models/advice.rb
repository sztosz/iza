class Advice < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone, validate: true
  attribute :message
  attribute :nickname, captcha: true
  
  attribute :street, validate: true
  attribute :city, validate: true
  attribute :zip, validate: true
  
  attribute :file, attachment: true

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