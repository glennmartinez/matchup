Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, '3C1F2FE2CA6586FC85DB148DF99C1245'

# C08081F087208735DDA6C0D57679BF60
end

require "openid/fetchers"
OpenID.fetcher.ca_file = "etc/ssl/certs/ca-certificates.crt"