class LInksController < ApplicationController
  before_action :set_l_ink, only: [:show, :edit, :update, :destroy]

  # GET /l_inks
  # GET /l_inks.json
  def index
    @l_inks = LInk.all
  end

  # GET /l_inks/1
  # GET /l_inks/1.json
  def show
  end

  # GET /l_inks/new
  def new
    @l_ink = LInk.new
  end

  # GET /l_inks/1/edit
  def edit
  end

  # POST /l_inks
  # POST /l_inks.json
  def create
    @l_ink = LInk.new(l_ink_params)

    respond_to do |format|
      if @l_ink.save
        format.html { redirect_to @l_ink, notice: 'L ink was successfully created.' }
        format.json { render :show, status: :created, location: @l_ink }
      else
        format.html { render :new }
        format.json { render json: @l_ink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l_inks/1
  # PATCH/PUT /l_inks/1.json
  def update
    respond_to do |format|
      if @l_ink.update(l_ink_params)
        format.html { redirect_to @l_ink, notice: 'L ink was successfully updated.' }
        format.json { render :show, status: :ok, location: @l_ink }
      else
        format.html { render :edit }
        format.json { render json: @l_ink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l_inks/1
  # DELETE /l_inks/1.json
  def destroy
    @l_ink.destroy
    respond_to do |format|
      format.html { redirect_to l_inks_url, notice: 'L ink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l_ink
      @l_ink = LInk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_ink_params
      params.require(:l_ink).permit(:title, :url)
    end
end
