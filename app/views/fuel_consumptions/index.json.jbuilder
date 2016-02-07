json.array!(@fuel_consumptions) do |fuel_consumption|
  json.extract! fuel_consumption, :id, :distance, :fuel_amount
  json.url fuel_consumption_url(fuel_consumption, format: :json)
end
