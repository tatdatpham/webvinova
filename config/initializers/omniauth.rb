OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1502803879937564', '2662fea723c89e768a25b6d742d09334', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end