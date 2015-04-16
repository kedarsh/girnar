json.array!(@tea_bases) do |tea_bases|
  json.extract! tea_bases, :id, :name, :price, :description, :info, :no_of_flavours, :serving_style_id
  json.url tea_bases_url(tea_bases, format: :json)
end
