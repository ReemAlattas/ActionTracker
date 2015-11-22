json.array!(@kpis) do |kpi|
  json.extract! kpi, :id
  json.url kpi_url(kpi, format: :json)
end
