class CreateProjets < ActiveRecord::Migration
  def change
    create_table :projets do |t|
      t.string :nom
      t.references :responsable
      t.boolean :pause

      t.timestamps
    end
    add_index :projets, :responsable_id
  end
end
