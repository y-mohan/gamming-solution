OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1391040154275655', 'f1b63523f55b7e51eb2b53aca1f5f36c'
end

