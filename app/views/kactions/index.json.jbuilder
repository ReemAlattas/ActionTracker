json.array!(@kactions) do |action|
  json.extract! kaction, :id
  json.url kaction_url(kaction, format: :json)
end
