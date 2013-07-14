class Attachment < ActiveRecord::Base
  attr_accessible :file_path
  mount_uploader :file_path, FileUploader
end