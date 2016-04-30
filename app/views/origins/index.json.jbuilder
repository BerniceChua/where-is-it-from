json.array!(@origins) do |origin|
  json.extract! origin, :id, :country, :region
  json.url origin_url(origin, format: :json)
end
