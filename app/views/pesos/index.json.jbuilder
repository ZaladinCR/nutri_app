json.array!(@pesos) do |peso|
  json.extract! peso, :id, :fecha, :peso, :usuario_id
  json.url peso_url(peso, format: :json)
end
