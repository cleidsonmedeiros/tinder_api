class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :user, foreign_key: { to_table: :users }
      t.references :match, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
