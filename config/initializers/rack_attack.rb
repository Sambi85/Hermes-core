class Rack::Attack
  throttle('req/ip', limit: 5, period: 60.seconds) do |request|   # Throttle requests by IP address to prevent abuse
    request.ip
  end

  blocklist('block_bad_user_agents') do |request|
    request.user_agent == 'BadBot'  # Example: block a known bad bot
  end
end
