class PosteosController < ApplicationController
  before_action :set_posteo, only: [:show, :edit, :update, :destroy]

  # GET /posteos
  # GET /posteos.json
  def index
    @posteos = Posteo.all
  end

  # GET /posteos/1
  # GET /posteos/1.json
  def show
  end

  # GET /posteos/new
  def new
    @posteo = Posteo.new
  end

  # GET /posteos/1/edit
  def edit
  end

  # POST /posteos
  # POST /posteos.json
  def create
    @posteo = Posteo.new(posteo_params)

    respond_to do |format|
      if @posteo.save
        format.html { redirect_to @posteo, notice: 'Posteo was successfully created.' }
        format.json { render :show, status: :created, location: @posteo }
      else
        format.html { render :new }
        format.json { render json: @posteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posteos/1
  # PATCH/PUT /posteos/1.json
  def update
    respond_to do |format|
      if @posteo.update(posteo_params)
        format.html { redirect_to @posteo, notice: 'Posteo was successfully updated.' }
        format.json { render :show, status: :ok, location: @posteo }
      else
        format.html { render :edit }
        format.json { render json: @posteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posteos/1
  # DELETE /posteos/1.json
  def destroy
    @posteo.destroy
    respond_to do |format|
      format.html { redirect_to posteos_url, notice: 'Posteo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posteo
      @posteo = Posteo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posteo_params
      params.require(:posteo).permit(:titulo, :cuerpo)
    end
end
