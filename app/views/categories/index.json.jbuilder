json.array!(@padawans) do |padawan|
  json.extract! padawan, :id, :name
  json.url padawan_url(padawan, format: :json)
end
