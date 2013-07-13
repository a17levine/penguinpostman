class Mailing < ActiveRecord::Base
  # attr_accessible :title, :body

  validates :user_email, presence: true

  mount_uploader :file_path, 

end
