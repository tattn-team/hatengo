class YonkomasController < ApplicationController
  before_action :set_yonkoma, only: [:show, :edit, :update, :destroy]

  # GET /yonkomas
  # GET /yonkomas.json
  def index
    @yonkomas = Yonkoma.all
  end

  # GET /yonkomas/1
  # GET /yonkomas/1.json
  def show yonkoma_id
    yonkoma = Yonkoma.where(id: id)

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
    (i_url1, p_url1, i_x1, i_y1, i_h1, i_w1,
    serif1, s_x1, s_y1, s_h1, s_w1,
    i_url2, p_url2, i_x2, i_y2, i_h2, i_w2,
    serif2, s_x2, s_y2, s_h2, s_w2,
    i_url3, p_url3, ix_3, i_y3, i_h3, i_w3,
    serif3, s_x3, s_y3, s_h3, s_w3,
    i_url4, p_url4, i_x4, i_y4, i_h4, i_w4,
    serif4, s_x4, s_y4, s_h4, s_w4)

    yonkoma = Yonkoma.create
    koma1 = yonkoma.Koma.create
    koma1.Img.create(image_url: i_url1, page_url: p_url1, x: i_x1, y: i_y1, h: i_h1, w: i_w1)
    koma1.Serif.create(str: serif1,  x: s_x1, y: s_y1, h: s_h1, w: s_w1)
    koma2 = yonkoma.Koma.create
    koma2.Img.create(image_url: i_url2, page_url: p_url2, x: i_x2, y: i_y2, h: i_h2, w: i_w2)
    koma2.Serif.create(str: serif2,  x: s_x2, y: s_y2, h: s_h2, w: s_w2)
    koma3 = yonkoma.Koma.create
    koma3.Img.create(image_url: i_url3, page_url: p_url3, x: i_x3, y: i_y3, h: i_h3, w: i_w3)
    koma3.Serif.create(str: serif3,  x: s_x3, y: s_y3, h: s_h3, w: s_w3)
    koma4 = yonkoma.Koma.create
    koma4.Img.create(image_url: i_url4, page_url: p_url4, x: i_x4, y: i_y4, h: i_h4, w: i_w4)
    koma4.Serif.create(str: serif4,  x: s_x4, y: s_y4, h: s_h4, w: s_w4)
  end

  # PATCH/PUT /yonkomas/1
  # PATCH/PUT /yonkomas/1.json
  def update

  end

  # DELETE /yonkomas/1
  # DELETE /yonkomas/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yonkoma

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yonkoma_params

    end
end
