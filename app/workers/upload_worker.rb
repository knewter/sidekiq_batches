require 'csv'

class UploadWorker < ActiveJob::Base
  queue_as :default

  def perform(upload_id)
    upload = Upload.find(upload_id)
    batch = Sidekiq::Batch.new
    batch.on(:success, UploadWorker, upload_id)
    batch.jobs do
      CSV.parse(upload.body) do |row|
        ArticleWorker.perform_later(upload_id, row)
      end
    end
  end

  def on_success(status, upload_id)
    upload = Upload.find(upload_id)
    upload.update_attributes({completed: true})
  end
end
