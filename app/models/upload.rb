class Upload < ActiveRecord::Base
  def import!
    UploadWorker.perform_later(self.id)
  end
end
