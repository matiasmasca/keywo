class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.references :sector, foreign_key: true
      t.decimal :monto_minimo
      t.decimal :monto_maximo

      t.timestamps
    end
  end
end
