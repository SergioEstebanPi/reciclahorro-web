class CreatePublicacions < ActiveRecord::Migration[5.1]
  def change
    create_table :publicacions do |t|
      t.references :usuario, foreign_key: true
      t.string :titulo
      t.text :descripcion
      t.text :imagen
      t.numeric :tipo

      t.timestamps
    end
  end
end
