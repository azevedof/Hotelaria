json.array!(@hospedes) do |hospede|
  json.extract! hospede, :id, :nome, :cpf, :rg, :telefone
  json.url hospede_url(hospede, format: :json)
end
