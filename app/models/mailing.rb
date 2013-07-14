class Mailing < ActiveRecord::Base
  mount_uploader :file_path, FileUploader

  attr_accessible :pages, :file_path, :user_email, :user_firstname, :user_lastname, :user_street_1, 
  :user_street_2, :user_city, :user_state, :user_zip, :recipient_first, :recipient_last,
  :recipient_street_1, :recipient_street_2, :recipient_city, :recipient_state, :recipient_zip

  # validates :user_email, presence: true

  

end
