json.array!(@aposentos) do |aposento|
  json.extract! aposento, :id, :pkidaposento, :descricao, :numero, :valor
  json.url aposento_url(aposento, format: :json)
end
