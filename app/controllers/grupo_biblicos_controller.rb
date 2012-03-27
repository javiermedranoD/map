class GrupoBiblicosController < ApplicationController
  # GET /grupo_biblicos
  # GET /grupo_biblicos.json
  def index
    @grupo_biblicos = GrupoBiblico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grupo_biblicos }
    end
  end

  # GET /grupo_biblicos/1
  # GET /grupo_biblicos/1.json
  def show
    @grupo_biblico = GrupoBiblico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grupo_biblico }
    end
  end

  # GET /grupo_biblicos/new
  # GET /grupo_biblicos/new.json
  def new
    @grupo_biblico = GrupoBiblico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grupo_biblico }
    end
  end

  # GET /grupo_biblicos/1/edit
  def edit
    @grupo_biblico = GrupoBiblico.find(params[:id])
  end

  # POST /grupo_biblicos
  # POST /grupo_biblicos.json
  def create
    @grupo_biblico = GrupoBiblico.new(params[:grupo_biblico])

    respond_to do |format|
      if @grupo_biblico.save
        format.html { redirect_to @grupo_biblico, notice: 'Grupo biblico was successfully created.' }
        format.json { render json: @grupo_biblico, status: :created, location: @grupo_biblico }
      else
        format.html { render action: "new" }
        format.json { render json: @grupo_biblico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grupo_biblicos/1
  # PUT /grupo_biblicos/1.json
  def update
    @grupo_biblico = GrupoBiblico.find(params[:id])

    respond_to do |format|
      if @grupo_biblico.update_attributes(params[:grupo_biblico])
        format.html { redirect_to @grupo_biblico, notice: 'Grupo biblico was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @grupo_biblico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_biblicos/1
  # DELETE /grupo_biblicos/1.json
  def destroy
    @grupo_biblico = GrupoBiblico.find(params[:id])
    @grupo_biblico.destroy

    respond_to do |format|
      format.html { redirect_to grupo_biblicos_url }
      format.json { head :ok }
    end
  end
end
