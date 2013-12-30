# Mail from admin to customer
class Form < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => Devise.email_regexp
  attribute :message
  #attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact",
      :to => %("#{email}"),
      #:from => "AJ ICT"
      :body => %("Thank you for your message. We'll get back to you soon.")
    }
  end
end

# Confirmation mail to admin
class Form2 < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => Devise.email_regexp
  attribute :message
  #attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact",
      :to => "jetse_snoep@hotmail.com",
      :body => %("#{message}")
      #:from => "AJ ICT"
    }
  end
end