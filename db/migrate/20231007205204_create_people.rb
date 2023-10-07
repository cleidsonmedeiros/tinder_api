class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.string :bio
      t.string :location
      t.string :match_preference
      t.string :sexual_orientation

      t.timestamps
    end
  end
end
