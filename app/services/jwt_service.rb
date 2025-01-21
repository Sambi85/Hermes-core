# app/services/jwt_service.rb
class JwtService
  HMAC_SECRET = ENV['JWT_SECRET_KEY'] # You should store this in an environment variable

  def self.encode(payload)
    JWT.encode(payload, HMAC_SECRET)
  end

  def self.decode(token)
    decoded = JWT.decode(token, HMAC_SECRET)
    decoded.first
  rescue JWT::DecodeError
    nil
  end
end
