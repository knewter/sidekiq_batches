class PutsController < ApplicationController
  def new
  end

  def create
    sleep 1
    worker =
      if params[:allow_dupes] == "1"
        PutsWorker.set(unique_for: false)
      else
        PutsWorker
      end

    worker.perform_async(params[:message])
    redirect_to root_path
  end
end
