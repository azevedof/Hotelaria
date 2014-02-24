json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :nome, :endereco, :telefone, :cidade, :estado
  json.url hotel_url(hotel, format: :json)
end
