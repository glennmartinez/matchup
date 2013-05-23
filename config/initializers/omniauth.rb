Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, ENV['3FC9B0C0C1CC76DB65F376B1BF3A900B']
end