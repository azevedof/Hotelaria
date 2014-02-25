json.array!(@contas) do |conta|
  json.extract! conta, :id, :valorTotal, :pago, :consumo_id
  json.url conta_url(conta, format: :json)
end
