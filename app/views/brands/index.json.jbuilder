json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :category, :url
  json.url brand_url(brand, format: :json)
end
