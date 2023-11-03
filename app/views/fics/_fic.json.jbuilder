json.extract! fic, :id, :title, :author, :summary, :word_count, :chapter_count, :fandom, :ship, :maturity_rating, :date_completed, :created_at, :updated_at
json.url fic_url(fic, format: :json)
