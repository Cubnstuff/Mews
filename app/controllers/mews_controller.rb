class MewsController < ApplicationController
  before_action :set_mew, only: [:show, :edit, :update, :destroy]
before_filter :authenticate_user!
  # GET /mews
  # GET /mews.json
  def index
    @mews = Mew.all
  end

  # GET /mews/1
  # GET /mews/1.json
  def show
  end

  # GET /mews/new
  def new
    @mew = Mew.new
  end

  # GET /mews/1/edit
  def edit
  end

  # POST /mews
  # POST /mews.json
  def create
    @mew = Mew.new(mew_params)

    respond_to do |format|
      if @mew.save
        format.html { redirect_to @mew, notice: 'Mew was successfully created.' }
        format.json { render :show, status: :created, location: @mew }
      else
        format.html { render :new }
        format.json { render json: @mew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mews/1
  # PATCH/PUT /mews/1.json
  def update
    respond_to do |format|
      if @mew.update(mew_params)
        format.html { redirect_to @mew, notice: 'Mew was successfully updated.' }
        format.json { render :show, status: :ok, location: @mew }
      else
        format.html { render :edit }
        format.json { render json: @mew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mews/1
  # DELETE /mews/1.json
  def destroy
    @mew.destroy
    respond_to do |format|
      format.html { redirect_to mews_url, notice: 'Mew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mew
      @mew = Mew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mew_params
      params.require(:mew).permit(:message, :user_id)
    end
end
