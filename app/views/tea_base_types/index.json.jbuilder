json.array!(@tea_base_types) do |tea_base_type|
  json.extract! tea_base_type, :id, :name, :description, :price, :tea_base_id
  json.url tea_base_type_url(tea_base_type, format: :json)
end
