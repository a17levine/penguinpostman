class UserMailer < ActionMailer::Base

  def order_confirmation_email(mailing)
    mail(:to => mailing.user_email, 
         :from => "auctioneerbot@gmail.com",
         :subject => "CONFIRMATION - Thank You For Your Purchase")
  end

  def order_submit(user)
    @user = user
    attachments["#{@user.file_path.path.split('/').last}"] = File.read("/uploads/mailing/file_path/#{@user.id}/#{@user.file_path.path.split('/').last}")
    mail(:to => @user.user_email, 
         :from => "auctioneerbot@gmail.com",
         :subject => "INCOMING ORDER #{@user.id}")
    attachments.deliver
  end

  # def index()
  # end

  

end
