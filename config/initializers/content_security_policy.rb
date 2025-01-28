Rails.application.config.content_security_policy do |policy|
  policy.default_src :self, 'http://localhost:3000'
  policy.form_action :self, 'http://localhost:4000'
end
