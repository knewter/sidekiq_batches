class PutsWorker
  include Sidekiq::Worker

  def perform
    puts "zomg"
  end
end
