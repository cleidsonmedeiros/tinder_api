class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :user, null: false, foreign_key: true, column: :user_id
      t.references :user, null: false, foreign_key: true, column: :match_id
      t.string :status

      t.timestamps
    end
  end
end
