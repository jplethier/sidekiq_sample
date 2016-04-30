Rails.application.configure do
  config.autoload_paths += %W(
    #{config.root}/app/services
  )
end
