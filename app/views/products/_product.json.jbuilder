json.extract! product, :id, :number, :ean, :name, :collection, :program, :size, :colour, :price_chf, :price_eur, :created_at, :updated_at
json.url product_url(product, format: :json)
