class UserMailer < ActionMailer::Base
  default from: ENV['ADMIN_EMAIL']

  def order_confirmation_email(mailing)
    @mailing = mailing
    mail(to:  @mailing.user_email,
         subject: "CONFIRMATION - Thank You For Your Purchase")
  end

  def order_submit(mailing)
    @mailing = mailing
    @user = 
    attachments["#{@mailing.file_path"] = File.read("/uploads/mailing/file_path/#{@user.id}/#{@mailing.file_path.path.split('/').last}")
    mail(to: @mailing.user_email,
         subject: "INCOMING ORDER #{params[:id]}")
    attachments.deliver
  end
end

  # def index()
  # end

