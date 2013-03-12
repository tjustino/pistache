class Projet < ActiveRecord::Base
  belongs_to :responsable
  has_many :taches, :dependent => :restrict
  attr_accessible :nom, :pause, :responsable_id, :url_info, :url_doc, :date_fin
  
  validates :nom, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
end
