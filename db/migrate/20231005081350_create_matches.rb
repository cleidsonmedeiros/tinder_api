class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      add_foreign_key :matches, :users, column: :user_id
      add_foreign_key :matches, :users, column: :match_id
      t.string :status

      t.timestamps
    end
  end
end
