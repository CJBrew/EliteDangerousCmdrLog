json.array!(@systems) do |system|
  json.extract! system, :id, :name, :economy, :government, :allegiance, :blackmarket, :notes
  json.url system_url(system, format: :json)
end
