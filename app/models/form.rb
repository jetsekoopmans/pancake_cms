# Mail from admin to customer
class Form < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => Devise.email_regexp
  attribute :message
  #attribute :nickname,  :captcha  => true
  #@response = Contact.first.response

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact",
      :to => %("#{email}"),
      #:from => "AJ ICT"
      :body => Contact.first.response 
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
      :to => Contact.first.email,
      :body => %(#{message}),
      :from => %("#{email}")
    }
  end
end