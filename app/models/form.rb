# Mail from admin to customer
class Form < MailForm::Base
  attribute :name,      :validate => true
  attribute :subject,   :validate => true
  attribute :email,     :validate => Devise.email_regexp
  attribute :message
  #attribute :nickname,  :captcha  => true
  #@response = Contact.first.response

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => Contact.first.response_subject,
      :to => %("#{email}"),
      :from => Contact.first.name,
      :body => Contact.first.response_message
    }
  end
end

# Confirmation mail to admin
class Form2 < MailForm::Base
  attribute :name,      :validate => true
  attribute :subject,   :validate => true
  attribute :email,     :validate => Devise.email_regexp
  attribute :message
  #attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => %(#{subject}),
      :to => Contact.first.email,
      :body => %(#{message}),
      :from => %("#{email}")
    }
  end
end