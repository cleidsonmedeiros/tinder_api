class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :person_id
      t.string :url
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
