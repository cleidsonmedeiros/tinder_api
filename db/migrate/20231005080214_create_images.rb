class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      add_foreign_key :photos, :people, column: :photo_id
      t.string :url

      t.timestamps
    end
  end
end
