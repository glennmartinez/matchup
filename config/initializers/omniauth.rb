Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, '45C1032773C0E6132C9B5D2C8C1D4FD9'

# C08081F087208735DDA6C0D57679BF60
end

require "openid/fetchers"
OpenID.fetcher.ca_file = "etc/ssl/certs/ca-certificates.crt"