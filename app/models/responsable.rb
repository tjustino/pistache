class Responsable < ActiveRecord::Base
  has_many :projets, :dependent => :restrict
  attr_accessible :invalide, :nom
  
  validates :nom, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
end
