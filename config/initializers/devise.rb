Devise.setup do |config|

  config.mailer_sender = 'ralattas@live.com'
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '902301929865813', 'a103fa8ee8746214e8f79ded12c556d7'
  end

end
