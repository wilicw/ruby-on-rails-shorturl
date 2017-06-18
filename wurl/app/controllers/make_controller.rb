class MakeController < ApplicationController
  def index
  end
  def todata
    @url = params[:url]
    @num = rand(999999).to_s
    @datas = Makeurl.new(num: @num, url: @url)
    @datas.save
    puts @url
    puts @num
  end
end
