class CreateMailings < ActiveRecord::Migration
  def change
    create_table :mailings do |t|

      t.timestamps
    end
  end
end
