class YonkomasController < ApplicationController
  before_action :set_yonkoma, only: [:show, :edit, :update, :destroy]
	skip_before_action :verify_authenticity_token

  # GET /yonkomas
  # GET /yonkomas.json
  def index
    @yonkomas = Yonkoma.all
  end

  # GET /yonkomas/1
  # GET /yonkomas/1.json
  def show
    yonkoma = Yonkoma.where(id: params[:yonkoma_id])

    @yonkomas = []
    datas = []
    yonkoma[0].komas.each do |koma|
      koma = Hash.new
      img = koma.imgs[0]
      image = Hash.new
      image["url"] = img.image_url
      image["link"] = img.image_url
      x = img.x
      y = img.y
      w = img.w
      h = img.h
      image["position"] = "top:" + x.to_s + "px;right:" + y.to_s + "px;"
      image["size"] = w.to_s + "x" + h.to_s
      koma["img"] += img

      srf = koma.serif[0]
      serif = Hash.new
      serif["str"] = srf.str
      x = srf.x
      y = srf.y
      w = srf.w
      h = srf.h
      serif["position"] = "top:" + x.to_s + "px;right:" + y.to_s + "px;"
      serif["size"] = w.to_s + "x" + h.to_s
      koma["srf"] += [serif]

      hukidashi = Hash.new
      hukidashi["position"] = "top:0px;right:0px;"
      hukidashi["size"] = "200x300"
      koma["hukidashi"] += [hukidashi]

      @yonkomas += [koma]
    end

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
=begin
パラメータ
    i_url1, p_url1, i_x1, i_y1, i_h1, i_w1,　画像
    serif1, s_x1, s_y1, s_h1, s_w1,　セリフ
    i_url2, p_url2, i_x2, i_y2, i_h2, i_w2,
    serif2, s_x2, s_y2, s_h2, s_w2,
    i_url3, p_url3, ix_3, i_y3, i_h3, i_w3,
    serif3, s_x3, s_y3, s_h3, s_w3,
    i_url4, p_url4, i_x4, i_y4, i_h4, i_w4,
    serif4, s_x4, s_y4, s_h4, s_w4
=end

    yonkoma = Yonkoma.create
    koma1 = yonkoma.komas.create
    koma1.imgs.create(image_url: params["i_url1"], page_url: params["p_url1"], x: params["i_x1"], y: params["i_y1"], h: params["i_h1"], w: params["i_w1"])
    koma1.serifs.create(str: params["serif1"],  x: params["s_x1"], y: params["s_y1"], h: params["s_h1"], w: params["s_w1"])
    koma2 = yonkoma.komas.create
    koma2.imgs.create(image_url: params["i_url2"], page_url: params["p_url2"], x: params["i_x2"], y: params["i_y2"], h: params["i_h2"], w: params["i_w2"])
    koma2.serifs.create(str: params["serif2"],  x: params["s_x2"], y: params["s_y2"], h: params["s_h2"], w: params["s_w2"])
    koma3 = yonkoma.komas.create
    koma3.imgs.create(image_url: params["i_url3"], page_url: params["p_url3"], x: params["i_x3"], y: params["i_y3"], h: params["i_h3"], w: params["i_w3"])
    koma3.serifs.create(str: params["serif3"],  x: params["s_x3"], y: params["s_y3"], h: params["s_h3"], w: params["s_w3"])
    koma4 = yonkoma.komas.create
    koma4.imgs.create(image_url: params["i_url4"], page_url: params["p_url4"], x: params["i_x4"], y: params["i_y4"], h: params["i_h4"], w: params["i_w4"])
    koma4.serifs.create(str: params["serif4"],  x: params["s_x4"], y: params["s_y4"], h: params["s_h4"], w: params["s_w4"])
  end

  # PATCH/PUT /yonkomas/1
  # PATCH/PUT /yonkomas/1.json
  def update

  end

  # DELETE /yonkomas/1
  # DELETE /yonkomas/1.json
  def destroy

  end

	def search_image
		nico = Nico::NicoImage.new
		nico.login Rails.application.secrets.nico_email, Rails.application.secrets.nico_pass
		result = nico.search [params[:q]]
		render json: result
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yonkoma

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yonkoma_params

    end
end
