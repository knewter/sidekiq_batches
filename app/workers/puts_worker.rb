class PutsWorker
  include Sidekiq::Worker

  def perform(message)
    puts message
    sleep 10
  end
end
