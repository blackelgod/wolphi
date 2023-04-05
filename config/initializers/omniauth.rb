Rails.application.config.middleware.use OmniAuth::Builder do
  provider :discord, "1092635864502370364", "HCi1W99gWvHf1qsYMdatTvcM1YWnkW94", scope: 'email identify'
  OmniAuth.config.on_failure = Proc.new { |env|
    OmniAuth::FailureEndpoint.new(env).redirect_to_failure
  }
end
