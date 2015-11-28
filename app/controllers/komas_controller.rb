class KomasController < ApplicationController
  before_action :set_koma, only: [:show, :edit, :update, :destroy]

  # GET /komas
  # GET /komas.json
  def index
    @komas = Koma.all
  end

  # GET /komas/1
  # GET /komas/1.json
  def show
  end

  # GET /komas/new
  def new
    @koma = Koma.new
  end

  # GET /komas/1/edit
  def edit
  end

  # POST /komas
  # POST /komas.json
  def create
    @koma = Koma.new(koma_params)

    respond_to do |format|
      if @koma.save
        format.html { redirect_to @koma, notice: 'Koma was successfully created.' }
        format.json { render :show, status: :created, location: @koma }
      else
        format.html { render :new }
        format.json { render json: @koma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /komas/1
  # PATCH/PUT /komas/1.json
  def update
    respond_to do |format|
      if @koma.update(koma_params)
        format.html { redirect_to @koma, notice: 'Koma was successfully updated.' }
        format.json { render :show, status: :ok, location: @koma }
      else
        format.html { render :edit }
        format.json { render json: @koma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komas/1
  # DELETE /komas/1.json
  def destroy
    @koma.destroy
    respond_to do |format|
      format.html { redirect_to komas_url, notice: 'Koma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koma
      @koma = Koma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def koma_params
      params[:koma]
    end
end
