class CreateResponsables < ActiveRecord::Migration
  def change
    create_table :responsables do |t|
      t.string :nom
      t.boolean :invalide

      t.timestamps
    end
  end
end
