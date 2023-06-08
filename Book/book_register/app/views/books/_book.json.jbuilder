json.extract! book, :id, :vinculo, :titulo, :autor, :edicao, :issn, :ano, :editora, :created_at, :updated_at
json.url book_url(book, format: :json)
