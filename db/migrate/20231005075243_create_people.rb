class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :genero
      t.string :bio
      t.string :fotos
      t.string :localizacao
      t.string :preferencia_match
      t.string :orientacao_sexual

      t.timestamps
    end
  end
end
