class UserMailer < ActionMailer::Base

  def order_confirmation_email(mailing)
    mail(:to => mailing.user_email, 
         :from => "auctioneerbot@gmail.com",
         :subject => "CONFIRMATION - Thank You For Your Purchase")
  end

  def order_submit(mailing)
    @mailing = mailing
    attachments["#{@mailing.file_path.path.split('/').last}"] = File.read("/uploads/mailing/file_path/#{@user.id}/#{@mailing.file_path.path.split('/').last}")
    mail(:to => @user.user_email, 
         :from => "auctioneerbot@gmail.com",
         :subject => "INCOMING ORDER #{@mailing.id}")
    attachments.deliver
  end

  # def index()
  # end

  

end
