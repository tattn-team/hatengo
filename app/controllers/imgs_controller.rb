class ImgsController < ApplicationController
  before_action :set_img, only: [:show, :edit, :update, :destroy]

  # GET /imgs
  # GET /imgs.json
  def index

  end

  # GET /imgs/1
  # GET /imgs/1.json
  def show

  end

  # GET /imgs/new
  def new

  end

  # GET /imgs/1/edit
  def edit
  end

  # POST /imgs
  # POST /imgs.json
  def create image_url, page_url, x, y, h, w
    #@img = Img.create(image_url: image_url, page_url: page_url, x: x, y: y, h: h, w: w)
  end

  # PATCH/PUT /imgs/1
  # PATCH/PUT /imgs/1.json
  def update

  end

  # DELETE /imgs/1
  # DELETE /imgs/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_img

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def img_params

    end
end
