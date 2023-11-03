class AddReaderDetailsToFics < ActiveRecord::Migration[6.1]
  def change
    add_column :fics, :reader_rating, :integer
    add_column :fics, :reader_notes, :text
  end
end
