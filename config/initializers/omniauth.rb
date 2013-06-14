Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, 'A6066443D64E0B5A1CF58ED46C4D6D66'

# C08081F087208735DDA6C0D57679BF60
end

# require "openid/fetchers"
# OpenID.fetcher.ca_file = "etc/ssl/certs/ca-certificates.crt"