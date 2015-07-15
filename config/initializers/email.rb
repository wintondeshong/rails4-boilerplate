ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.delivery_method = :test if Rails.env.test?

if Rails.env != "test"
  email_settings = YAML::load(ERB.new(File.read("#{Rails.root.to_s}/config/email.yml")).result)
  ActionMailer::Base.smtp_settings = email_settings[Rails.env] unless email_settings[Rails.env].nil?
end
