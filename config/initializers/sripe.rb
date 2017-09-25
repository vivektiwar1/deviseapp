Rails.configuration.stripe = {
 	:publishable_key => 'pk_test_I2zychcAPM4go3k2BBkTtpVG',
 	:secret_key=> 'sk_test_5QBZxL383tj4xGEQ84nEeZMZ'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]