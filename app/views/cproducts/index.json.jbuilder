json.array!(@cproducts) do |cproduct|
  json.extract! cproduct, :id, :title
  json.url cproduct_url(cproduct, format: :json)
end
