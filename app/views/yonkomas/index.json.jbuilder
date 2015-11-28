json.array!(@yonkomas) do |yonkoma|
  json.extract! yonkoma, :id
  json.url yonkoma_url(yonkoma, format: :json)
end
