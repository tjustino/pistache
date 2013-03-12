class AddDetailsToTaches < ActiveRecord::Migration
  def change
    add_column :taches, :date_debut, :date
    add_column :taches, :date_fin, :date
  end
end
