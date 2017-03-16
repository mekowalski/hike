Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '7a6f6e9ce52a78196902', '24c4cae5672c771f51d8aa2dc09346b176a39441', scope: 'user'
end


# puts 'Kowalski are you there??'
