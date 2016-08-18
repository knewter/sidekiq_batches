class PutsWorker
  include Sidekiq::Worker
  sidekiq_options unique_for: 10.seconds # <--

  def perform(message)
    puts message
    sleep 10
  end
end
