Rails.application.config.session_store :cookie_store, 
  key: '_user_session_key',
  secure: Rails.env.production?,
  expire_after: 10.minutes,
  same_site: :lax
