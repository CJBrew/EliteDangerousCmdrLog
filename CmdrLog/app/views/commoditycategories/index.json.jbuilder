json.array!(@commoditycategories) do |commoditycategory|
  json.extract! commoditycategory, :id, :name
  json.url commoditycategory_url(commoditycategory, format: :json)
end
