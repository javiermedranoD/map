class CongregacionsController < ApplicationController
  # GET /congregacions
  # GET /congregacions.json
  def index
    @congregacions = Congregacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @congregacions }
    end
  end

  # GET /congregacions/1
  # GET /congregacions/1.json
  def show
    @congregacion = Congregacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @congregacion }
    end
  end

  # GET /congregacions/new
  # GET /congregacions/new.json
  def new
    @congregacion = Congregacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @congregacion }
    end
  end

  # GET /congregacions/1/edit
  def edit
    @congregacion = Congregacion.find(params[:id])
  end

  # POST /congregacions
  # POST /congregacions.json
  def create
    @congregacion = Congregacion.new(params[:congregacion])

    respond_to do |format|
      if @congregacion.save
        format.html { redirect_to @congregacion, notice: 'Congregacion was successfully created.' }
        format.json { render json: @congregacion, status: :created, location: @congregacion }
      else
        format.html { render action: "new" }
        format.json { render json: @congregacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /congregacions/1
  # PUT /congregacions/1.json
  def update
    @congregacion = Congregacion.find(params[:id])

    respond_to do |format|
      if @congregacion.update_attributes(params[:congregacion])
        format.html { redirect_to @congregacion, notice: 'Congregacion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @congregacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congregacions/1
  # DELETE /congregacions/1.json
  def destroy
    @congregacion = Congregacion.find(params[:id])
    @congregacion.destroy

    respond_to do |format|
      format.html { redirect_to congregacions_url }
      format.json { head :ok }
    end
  end
  
  def vermapa
    @mapa = Congregacion.all 
  end
end
