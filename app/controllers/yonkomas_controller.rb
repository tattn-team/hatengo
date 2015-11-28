class YonkomasController < ApplicationController
  before_action :set_yonkoma, only: [:show, :edit, :update, :destroy]

  # GET /yonkomas
  # GET /yonkomas.json
  def index
    @yonkomas = Yonkoma.all
  end

  # GET /yonkomas/1
  # GET /yonkomas/1.json
  def show
  end

  # GET /yonkomas/new
  def new
    @yonkoma = Yonkoma.new
  end

  # GET /yonkomas/1/edit
  def edit
  end

  # POST /yonkomas
  # POST /yonkomas.json
  def create
    @yonkoma = Yonkoma.new(yonkoma_params)

    respond_to do |format|
      if @yonkoma.save
        format.html { redirect_to @yonkoma, notice: 'Yonkoma was successfully created.' }
        format.json { render :show, status: :created, location: @yonkoma }
      else
        format.html { render :new }
        format.json { render json: @yonkoma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yonkomas/1
  # PATCH/PUT /yonkomas/1.json
  def update
    respond_to do |format|
      if @yonkoma.update(yonkoma_params)
        format.html { redirect_to @yonkoma, notice: 'Yonkoma was successfully updated.' }
        format.json { render :show, status: :ok, location: @yonkoma }
      else
        format.html { render :edit }
        format.json { render json: @yonkoma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yonkomas/1
  # DELETE /yonkomas/1.json
  def destroy
    @yonkoma.destroy
    respond_to do |format|
      format.html { redirect_to yonkomas_url, notice: 'Yonkoma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yonkoma
      @yonkoma = Yonkoma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yonkoma_params
      params.require(:user_id)
    end
end
