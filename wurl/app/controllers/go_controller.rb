class GoController < ApplicationController
  def index
    @id = params[:id]
    @url = Makeurl.find_by(num: @id)
  end
end
