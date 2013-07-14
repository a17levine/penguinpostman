Rails.configuration.stripe = {
  # :publishable_key => ENV['PUBLISHABLE_KEY'],
  # :secret_key      => ENV['SECRET_KEY']
  :publishable_key => 'pk_live_G3naCbjf6XlAsRd2SNILUYfe',
  :secret_key      => 'sk_live_bqhWyhPYo38yaNFEYgX1wuV8'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]