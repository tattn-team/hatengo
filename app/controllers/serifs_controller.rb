class SerifsController < ApplicationController
  before_action :set_serif, only: [:show, :edit, :update, :destroy]

  # GET /serifs
  # GET /serifs.json
  def index
    @serifs = Serif.all
  end

  # GET /serifs/1
  # GET /serifs/1.json
  def show
  end

  # GET /serifs/new
  def new
    @serif = Serif.new
  end

  # GET /serifs/1/edit
  def edit
  end

  # POST /serifs
  # POST /serifs.json
  def create
    @serif = Serif.new(serif_params)

    respond_to do |format|
      if @serif.save
        format.html { redirect_to @serif, notice: 'Serif was successfully created.' }
        format.json { render :show, status: :created, location: @serif }
      else
        format.html { render :new }
        format.json { render json: @serif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serifs/1
  # PATCH/PUT /serifs/1.json
  def update
    respond_to do |format|
      if @serif.update(serif_params)
        format.html { redirect_to @serif, notice: 'Serif was successfully updated.' }
        format.json { render :show, status: :ok, location: @serif }
      else
        format.html { render :edit }
        format.json { render json: @serif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serifs/1
  # DELETE /serifs/1.json
  def destroy
    @serif.destroy
    respond_to do |format|
      format.html { redirect_to serifs_url, notice: 'Serif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serif
      @serif = Serif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serif_params
      params[:serif]
    end
end
