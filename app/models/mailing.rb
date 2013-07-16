class Mailing < ActiveRecord::Base
  mount_uploader :file_path, FileUploader

  attr_accessible :pages, :file_path, :user_email, :user_firstname, :user_lastname, :user_street_1, 
  :user_street_2, :user_city, :user_state, :user_zip, :recipient_firstname, :recipient_lastname, :recipient_street_1, 
  :recipient_street_2, :recipient_city, :recipient_state, :recipient_zip, :order_processed

  validates :file_path, :user_email, :user_firstname, :user_lastname, :user_street_1, 
  :user_street_2, :user_city, :user_state, :user_zip, :recipient_firstname, :recipient_lastname, :recipient_street_1, :recipient_city, :recipient_state, :recipient_zip, presence: true

  before_save :default_values
  def default_values
    self.order_processed = 'false' if self.order_processed.nil?
  end

  def user_fullname
    "#{user_firstname} #{user_lastname}"
  end
  

end
