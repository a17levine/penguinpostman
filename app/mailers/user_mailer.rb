class UserMailer < ActionMailer::Base
  default from: "auctioneerbot@gmail.com"

  def order_confirmation_email(mailing)
    @mailing = mailing
    mail(to:  @mailing.user_email, 
         subject: "CONFIRMATION - Thank You For Your Purchase")
  end

  def order_submit(mailing)
    @mailing = mailing
    attachments["#{@mailing.file_path.path.split('/').last}"] = File.read("/uploads/mailing/file_path/#{@user.id}/#{@mailing.file_path.path.split('/').last}")
    mail(to: @user.user_email,
         subject: "INCOMING ORDER #{@mailing.id}")
    attachments.deliver
  end
end

  # def index()
  # end

