class AccueilController < ApplicationController
  def index
    p = Projet.arel_table
    t = Tache.arel_table
    @infos = Projet.where(p[:pause].eq(false).and((p[:date_fin].eq(nil)).or(p[:date_fin].eq(nil)))).includes(:taches).where((t[:date_fin].eq(nil)).or(t[:date_fin].eq(nil)))
  end
end
