# encoding: utf-8

class TachesController < ApplicationController
  # GET /taches
  # GET /taches.json
  def index
    # @taches = Tache.all
    t = Tache.arel_table
    @taches_ouvertes = Tache.where( (t[:date_fin].eq(nil)).or(t[:date_fin].eq(nil)) )
    @taches_fermees = Tache.where( t[:date_fin].not_eq(nil) )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taches }
    end
  end

  # GET /taches/1
  # GET /taches/1.json
  def show
    @tache = Tache.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tache }
    end
  end

  # GET /taches/new
  # GET /taches/new.json
  def new
    @tache = Tache.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tache }
    end
  end

  # GET /taches/1/edit
  def edit
    @tache = Tache.find(params[:id])
  end

  # POST /taches
  # POST /taches.json
  def create
    @tache = Tache.new(params[:tache])

    respond_to do |format|
      if @tache.save
        format.html { redirect_to @tache, notice: "La tâche a été créée avec succès." }
        format.json { render json: @tache, status: :created, location: @tache }
      else
        format.html { render action: "new" }
        format.json { render json: @tache.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taches/1
  # PUT /taches/1.json
  def update
    @tache = Tache.find(params[:id])

    respond_to do |format|
      if @tache.update_attributes(params[:tache])
        format.html { redirect_to @tache, notice: "La tâche a été mise à jour avec succès." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tache.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taches/1
  # DELETE /taches/1.json
  def destroy
    @tache = Tache.find(params[:id])
    @tache.destroy

    respond_to do |format|
      format.html { redirect_to taches_url }
      format.json { head :no_content }
    end
  end
end
