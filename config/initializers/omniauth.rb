Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
    # 2122771821369603
    # ac092df0eb6643a1f89ab7dc1172a879
end

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :linkedin, ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET']
    # 78hpbcdgb5vk6f
    # 546iKbEUMuniT3hd
end