json.extract! prodect, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url prodect_url(prodect, format: :json)
