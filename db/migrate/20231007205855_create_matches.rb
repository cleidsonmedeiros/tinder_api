class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :person, foreign_key: { to_table: :people }
      t.references :matched_person, foreign_key: { to_table: :people }
      t.string :status

      t.timestamps
    end
  end
end
