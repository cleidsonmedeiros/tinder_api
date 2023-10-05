class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :user1, null: false, foreign_key: true
      t.references :user2, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
