json.array!(@serifs) do |serif|
  json.extract! serif, :id
  json.url serif_url(serif, format: :json)
end
