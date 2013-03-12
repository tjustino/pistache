# encoding: utf-8

class ProjetsController < ApplicationController
  # GET /projets
  # GET /projets.json
  def index
    # @projets = Projet.all
    t = Projet.arel_table
    @projets_ouverts = Projet.where( (t[:date_fin].eq(nil)).or(t[:date_fin].eq(nil)) )
    @projets_fermes = Projet.where( t[:date_fin].not_eq(nil) )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projets }
    end
  end

  # GET /projets/1
  # GET /projets/1.json
  def show
    @projet = Projet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projet }
    end
  end

  # GET /projets/new
  # GET /projets/new.json
  def new
    @projet = Projet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @projet }
    end
  end

  # GET /projets/1/edit
  def edit
    @projet = Projet.find(params[:id])
  end

  # POST /projets
  # POST /projets.json
  def create
    @projet = Projet.new(params[:projet])

    respond_to do |format|
      if @projet.save
        format.html { redirect_to @projet, notice: "Le projet a été créé avec succès." }
        format.json { render json: @projet, status: :created, location: @projet }
      else
        format.html { render action: "new" }
        format.json { render json: @projet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projets/1
  # PUT /projets/1.json
  def update
    @projet = Projet.find(params[:id])

    respond_to do |format|
      if @projet.update_attributes(params[:projet])
        format.html { redirect_to @projet, notice: "Le projet a été mis à jour avec succès." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @projet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projets/1
  # DELETE /projets/1.json
  def destroy
    @projet = Projet.find(params[:id])
    @projet.destroy

    respond_to do |format|
      format.html { redirect_to projets_url }
      format.json { head :no_content }
    end
  end
end
