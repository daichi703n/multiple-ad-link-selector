Devise.setup do |config|
  require 'devise/orm/active_record'
  config.omniauth :google_oauth2,
                  "948562627344-p3ftu6307di54cd7m0peh4p1tnpnqmer.apps.googleusercontent.com", # 環境変数に先ほど控えたクライアントIDを入れておく
                  "zbscxNnrVT9mBiHUDZsafptl"#, # 環境変数に先ほど控えたシークレットを入れておく
                  #name: :google,
                  #scope: %w(email)
end
