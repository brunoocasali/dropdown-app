json.array!(@installments) do |installment|
  json.extract! installment, :id, :amount, :number, :references
  json.url installment_url(installment, format: :json)
end
