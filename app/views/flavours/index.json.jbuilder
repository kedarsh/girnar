json.array!(@flavours) do |flavour|
  json.extract! flavour, :id, :name, :description
  json.url flavour_url(flavour, format: :json)
end
