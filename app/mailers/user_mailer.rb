class UserMailer < ActionMailer::Base

  def order_confirmation(user)
    @user = user
    mail(:to => user.user_xemail, 
         :from => "auctioneerbot@gmail.com",
         :subject => "CONFIRMATION - Thank You For Your Purchase")
  end

  # def welcome_email(user)
  #   recipients    user.email
  #   from          "Penguin Postman <auctioneerbot@gmail.com>"
  #   subject       "Thank You For Your Purchase"
  #   sent_on       Time.now
  #   body          {:user => user, :url => "http://example.com/login"}
  # end
  

end
