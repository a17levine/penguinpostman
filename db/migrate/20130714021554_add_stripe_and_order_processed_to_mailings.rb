class AddStripeAndOrderProcessedToMailings < ActiveRecord::Migration
  def change
    add_column :mailings, :stripe_id, :string
    add_column :mailings, :order_processed, :boolean
  end
end
