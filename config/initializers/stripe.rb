Rails.configuration.stripe = {
  # :publishable_key => ENV['PUBLISHABLE_KEY'],
  # :secret_key      => ENV['SECRET_KEY']
  :publishable_key => 'pk_test_hUrf8D6B8e8qtDHEBm9VVOuP',
  :secret_key      => 'sk_test_YhAnEXdbigIFk6vhtFo3XHhc'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]