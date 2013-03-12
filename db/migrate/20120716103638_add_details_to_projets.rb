class AddDetailsToProjets < ActiveRecord::Migration
  def change
    add_column :projets, :date_fin, :date
    add_column :projets, :url_info, :string
    add_column :projets, :url_doc, :string
  end
end
