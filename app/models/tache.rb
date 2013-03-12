class Tache < ActiveRecord::Base
  belongs_to :projet
  attr_accessible :nom, :projet_id, :date_debut, :date_fin, :charge
  
  validates(:nom, :presence => true, :length => { :minimum => 3 })
  validates(:date_debut, :presence => true)
end
