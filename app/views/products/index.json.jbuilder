json.array!(@jedis) do |jedi|
  json.extract! jedi, :id, :name
  json.url jedi_url(jedi, format: :json)
end
