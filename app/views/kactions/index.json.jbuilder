json.array!(@kactions) do |kaction|
  json.extract! kaction, :id
  json.url kaction_url(kaction, format: :json)
end
