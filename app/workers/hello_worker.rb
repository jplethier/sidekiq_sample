# Worker to send email
class HelloWorker
  include Sidekiq::Worker
  sidekiq_options queue: :default

  def perform(greeting, name)
    puts "\n\n\n\n"
    puts "#{greeting}, #{name}"
  end
end
