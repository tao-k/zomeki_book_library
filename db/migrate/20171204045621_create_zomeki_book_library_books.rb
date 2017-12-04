class CreateZomekiBookLibraryBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :zomeki_book_library_books do |t|
      t.integer :content_id
      t.string :title
      t.string :author
      t.string :summary
      t.string :description
      t.datetime :published_at
      t.timestamps
    end
  end
end
