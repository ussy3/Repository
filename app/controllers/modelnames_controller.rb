class ModelnamesController < ApplicationController
  before_action :set_modelname, only: [:show, :edit, :update, :destroy]

  # GET /modelnames
  # GET /modelnames.json
  def index
    @modelnames = Modelname.all
  end

  # GET /modelnames/1
  # GET /modelnames/1.json
  def show
  end

  # GET /modelnames/new
  def new
    @modelname = Modelname.new
  end

  # GET /modelnames/1/edit
  def edit
  end

  # POST /modelnames
  # POST /modelnames.json
  def create
    @modelname = Modelname.new(modelname_params)

    respond_to do |format|
      if @modelname.save
        format.html { redirect_to @modelname, notice: 'Modelname was successfully created.' }
        format.json { render :show, status: :created, location: @modelname }
      else
        format.html { render :new }
        format.json { render json: @modelname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modelnames/1
  # PATCH/PUT /modelnames/1.json
  def update
    respond_to do |format|
      if @modelname.update(modelname_params)
        format.html { redirect_to @modelname, notice: 'Modelname was successfully updated.' }
        format.json { render :show, status: :ok, location: @modelname }
      else
        format.html { render :edit }
        format.json { render json: @modelname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modelnames/1
  # DELETE /modelnames/1.json
  def destroy
    @modelname.destroy
    respond_to do |format|
      format.html { redirect_to modelnames_url, notice: 'Modelname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modelname
      @modelname = Modelname.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def modelname_params
      params.require(:modelname).permit(:fieldone, :fieldtwo, :fieldthree, :age, :lot)
    end
end
