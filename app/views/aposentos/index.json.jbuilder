json.array!(@aposentos) do |aposento|
  json.extract! aposento, :id, :valor, :descricao, :numero, :hotel_id
  json.url aposento_url(aposento, format: :json)
end
