json.array!(@imgs) do |img|
  json.extract! img, :id
  json.url img_url(img, format: :json)
end
