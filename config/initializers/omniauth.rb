Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['7a6f6e9ce52a78196902'], ENV['24c4cae5672c771f51d8aa2dc09346b176a39441']
end
