class ChangeMailingsZipCodesToString < ActiveRecord::Migration
  def change
  	change_column :mailings, :user_zip, :string
  	change_column :mailings, :recipient_zip, :string
  end
end
