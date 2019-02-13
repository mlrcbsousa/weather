class JsonWebToken
  HMAC_SECRET = 'my$ecretK3y'.freeze
  # cant use Rails.application.secrets.secret_key_base in rails 5.2
  # flexible calss in order to change Rails.application...etc if needed
  # can change this and keep rest of code intact
  class << self
    def encode(payload)
      expiration = 30.minutes.from_now.to_i
      JWT.encode payload.merge(exp: expiration), HMAC_SECRET, 'HS256'
    end

    def decode(token)
      JWT.decode(token, HMAC_SECRET, 'HS256').first
    end
  end
end
