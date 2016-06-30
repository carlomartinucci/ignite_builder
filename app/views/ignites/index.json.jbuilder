json.array!(@ignites) do |ignite|
  json.extract! ignite, :id, :code, :name, :data
  json.url ignite_url(ignite, format: :json)
end
