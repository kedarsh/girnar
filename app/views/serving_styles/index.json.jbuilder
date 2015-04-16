json.array!(@serving_styles) do |serving_style|
  json.extract! serving_style, :id, :name, :description
  json.url serving_style_url(serving_style, format: :json)
end
