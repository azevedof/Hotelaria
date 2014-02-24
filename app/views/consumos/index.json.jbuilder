json.array!(@consumos) do |consumo|
  json.extract! consumo, :id, :descricao, :quantidade, :valorUnitario
  json.url consumo_url(consumo, format: :json)
end
