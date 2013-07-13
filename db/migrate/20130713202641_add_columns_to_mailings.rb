class AddColumnsToMailings < ActiveRecord::Migration
  def change
    add_column :mailings, :pages, :integer
    add_column :mailings, :file_path, :string
    add_column :mailings, :user_email, :string
    add_column :mailings, :user_firstname, :string
    add_column :mailings, :user_lastname, :string
  end
end
