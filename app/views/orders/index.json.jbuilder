json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :serving_style_id, :tea_base_id, :flavour_id, :packaging_id, :label_id, :blend_name, :message, :status
  json.url order_url(order, format: :json)
end
