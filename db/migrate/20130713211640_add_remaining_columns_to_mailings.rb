class AddRemainingColumnsToMailings < ActiveRecord::Migration
  def change
    add_column :mailings, :user_street_1, :string
    add_column :mailings, :user_street_2, :string
    add_column :mailings, :user_city, :string
    add_column :mailings, :user_state, :string
    add_column :mailings, :user_zip, :integer
    add_column :mailings, :recipient_first, :string
    add_column :mailings, :recipient_last, :string
    add_column :mailings, :recipient_street_1, :string
    add_column :mailings, :recipient_street_2, :string
    add_column :mailings, :recipient_city, :string
    add_column :mailings, :recipient_state, :string
    add_column :mailings, :recipient_zip, :integer
  end
end
