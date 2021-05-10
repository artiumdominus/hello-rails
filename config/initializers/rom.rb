ROM::Rails::Railtie.configure do |config|
  # config.gateways[:default] = [:sql, ENV.fetch('DATABASE_URL')]
  config.gateways[:default] = [:sql, "sqlite://db/development.sqlite3"]
end