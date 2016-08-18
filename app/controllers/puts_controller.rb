class PutsController < ApplicationController
  def new
  end

  def create
    sleep 1
    PutsWorker.perform_async(params[:message])
    redirect_to root_path
  end
end
