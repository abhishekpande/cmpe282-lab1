json.array!(@customcatalogs) do |customcatalog|
  json.extract! customcatalog, :id, :name, :features, :quantity
  json.url customcatalog_url(customcatalog, format: :json)
end
