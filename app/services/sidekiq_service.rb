require 'sidekiq/api'

class SidekiqService
  def self.queues
    Sidekiq::Queue.all
  end

  def self.queues_size
    queues = {}
    Sidekiq::Queue.all.each do |queue|
      queues[queue.name] = Sidekiq::Queue.new(queue.name).size
    end

    queues
  end

  def self.clear_queue(name)
    Sidekiq::Queue.new(name).clear
  end

  def self.schedule_set
    Sidekiq::ScheduledSet.new
  end

  def self.retry_set
    Sidekiq::RetrySet.new
  end
end
