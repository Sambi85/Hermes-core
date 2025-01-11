Rails.application.config.session_store :cookie_store, key: ENV['SESSION_KEY'] || '_default_session_key', secure: Rails.env.production?, same_site: :lax
