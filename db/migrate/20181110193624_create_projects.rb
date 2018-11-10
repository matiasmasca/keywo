class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :sector, foreign_key: true
      t.string :marca
      t.text :descripcion
      t.decimal :necesidad_dinero
      t.string :necesidad_colaboradores
      t.integer :necesidad_colaboradores_cantidad
      t.string :necesidad_otra

      t.timestamps
    end
  end
end
