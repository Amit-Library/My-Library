json.array!(@books) do |book|
  json.extract! book, :id, :book_name, :author_name, :price, :description, :user_id
  json.url book_url(book, format: :json)
end
