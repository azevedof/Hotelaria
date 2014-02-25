json.array!(@hospedagens) do |hospedagem|
  json.extract! hospedagem, :id, :dataEntrada, :dataSaida, :conta_id, :hospede_id, :aposento_id
  json.url hospedagem_url(hospedagem, format: :json)
end
