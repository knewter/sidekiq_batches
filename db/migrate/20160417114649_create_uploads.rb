class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.text :body
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
