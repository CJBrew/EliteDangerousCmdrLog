json.array!(@commodities) do |commodity|
  json.extract! commodity, :id, :name, :description, :category
  json.url commodity_url(commodity, format: :json)
end
