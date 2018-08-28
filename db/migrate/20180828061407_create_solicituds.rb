class CreateSolicituds < ActiveRecord::Migration[5.1]
  def change
    create_table :solicituds do |t|
      t.string :titulo
      t.text :descripcion
      t.date :fecha_recoleccion
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
