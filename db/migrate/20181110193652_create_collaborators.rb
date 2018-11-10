class CreateCollaborators < ActiveRecord::Migration[5.1]
  def change
    create_table :collaborators do |t|
      t.integer :disponibilidad
      t.references :city, foreign_key: true
      t.references :zone, foreign_key: true
      t.boolean :mobilidad
      t.string :herramientas
      t.references :skill, foreign_key: true
      t.string :others_skills

      t.timestamps
    end
  end
end
