json.array!(@apprenticeships) do |apprenticeship|
  json.extract! apprenticeship, :id, :jedi_id, :padawan_id
  json.url apprenticeship_url(apprenticeship, format: :json)
end
