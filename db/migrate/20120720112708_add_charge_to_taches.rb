class AddChargeToTaches < ActiveRecord::Migration
  def change
    add_column :taches, :charge, :decimal, :precision => 4, :scale => 2
  end
end
