json.array!(@komas) do |koma|
  json.extract! koma, :id
  json.url koma_url(koma, format: :json)
end
