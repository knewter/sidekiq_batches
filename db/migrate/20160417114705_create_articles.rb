class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.text :body
      t.references :upload, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
