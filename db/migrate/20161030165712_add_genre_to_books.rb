class AddGenreToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :genre, index: true, foreign_key: true
  end
end
