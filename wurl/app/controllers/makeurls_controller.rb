class MakeurlsController < ApplicationController
  before_action :set_makeurl, only: [:show, :edit, :update, :destroy]

  # GET /makeurls
  # GET /makeurls.json
  def index
    @makeurls = Makeurl.all
  end

  # GET /makeurls/1
  # GET /makeurls/1.json
  def show
  end

  # GET /makeurls/new
  def new
    @makeurl = Makeurl.new
  end

  # GET /makeurls/1/edit
  def edit
  end

  # POST /makeurls
  # POST /makeurls.json
  def create
    @makeurl = Makeurl.new(makeurl_params)

    respond_to do |format|
      if @makeurl.save
        format.html { redirect_to @makeurl, notice: 'Makeurl was successfully created.' }
        format.json { render :show, status: :created, location: @makeurl }
      else
        format.html { render :new }
        format.json { render json: @makeurl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makeurls/1
  # PATCH/PUT /makeurls/1.json
  def update
    respond_to do |format|
      if @makeurl.update(makeurl_params)
        format.html { redirect_to @makeurl, notice: 'Makeurl was successfully updated.' }
        format.json { render :show, status: :ok, location: @makeurl }
      else
        format.html { render :edit }
        format.json { render json: @makeurl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makeurls/1
  # DELETE /makeurls/1.json
  def destroy
    @makeurl.destroy
    respond_to do |format|
      format.html { redirect_to makeurls_url, notice: 'Makeurl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makeurl
      @makeurl = Makeurl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makeurl_params
      params.require(:makeurl).permit(:num, :url)
    end
end
