class MailingObserver < ActiveRecord::Observer
  def after_create(user)
    MailingMailer.deliver_welcome_email(user)
  end
end