class CreateFics < ActiveRecord::Migration[6.1]
  def change
    create_table :fics do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.bigint :word_count
      t.integer :chapter_count
      t.string :fandom
      t.string :ship
      t.string :maturity_rating
      t.date :date_completed

      t.timestamps
    end
  end
end
