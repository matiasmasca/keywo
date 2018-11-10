class CreateInvestorProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_projects do |t|
      t.references :project, foreign_key: true
      t.references :investor, foreign_key: true

      t.timestamps
    end
  end
end
