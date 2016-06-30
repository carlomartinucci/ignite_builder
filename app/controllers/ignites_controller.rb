class IgnitesController < ApplicationController
  before_action :set_ignite, only: [:show, :edit, :update, :destroy]

  # GET /ignites
  # GET /ignites.json
  def index
    @ignites = Ignite.all
  end

  # GET /ignites/1
  # GET /ignites/1.json
  def show
    render layout: 'ignite'
  end

  # GET /ignites/new
  def new
    @ignite = Ignite.new
  end

  # GET /ignites/1/edit
  def edit
  end

  # POST /ignites
  # POST /ignites.json
  def create
    @ignite = Ignite.new(ignite_params)

    respond_to do |format|
      if @ignite.save
        format.html { redirect_to @ignite, notice: 'Ignite was successfully created.' }
        format.json { render :show, status: :created, location: @ignite }
      else
        format.html { render :new }
        format.json { render json: @ignite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ignites/1
  # PATCH/PUT /ignites/1.json
  def update
    respond_to do |format|
      if @ignite.update(ignite_params)
        format.html { redirect_to @ignite, notice: 'Ignite was successfully updated.' }
        format.json { render :show, status: :ok, location: @ignite }
      else
        format.html { render :edit }
        format.json { render json: @ignite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ignites/1
  # DELETE /ignites/1.json
  def destroy
    @ignite.destroy
    respond_to do |format|
      format.html { redirect_to ignites_url, notice: 'Ignite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ignite
      @ignite = Ignite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ignite_params
      params.require(:ignite).permit(:code, :name, :data)
    end
end
