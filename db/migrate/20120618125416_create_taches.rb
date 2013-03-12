class CreateTaches < ActiveRecord::Migration
  def change
    create_table :taches do |t|
      t.string :nom
      t.references :projet

      t.timestamps
    end
    add_index :taches, :projet_id
  end
end
