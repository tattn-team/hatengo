require 'nico_util'

module Nico
  class NicoImage
    def login email, pass
      @nico = NicoUtil::login email, pass
    end

    def search keywords
      word = ""
      keywords.each do |keyword|
        word += keyword + " "
      end
      results = NicoUtil::Illust.search word, _limit: 10
      return [] unless results[:data]

      urls = []
      results[:data].each do |result|
        image = @nico.illust result[:contentId]
        url = {page_url: image.url, image_url: image.image_url}
        urls.push url
      end
      urls
    end

  end
end
