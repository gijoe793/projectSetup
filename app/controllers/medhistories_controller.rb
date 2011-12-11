class MedhistoriesController < ApplicationController
  # GET /medhistories
  # GET /medhistories.json
  def index
    @medhistories = Medhistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @medhistories }
    end
  end

  # GET /medhistories/1
  # GET /medhistories/1.json
  def show
    @medhistory = Medhistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @medhistory }
    end
  end

  # GET /medhistories/new
  # GET /medhistories/new.json
  def new
    @medhistory = Medhistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @medhistory }
    end
  end

  # GET /medhistories/1/edit
  def edit
    @medhistory = Medhistory.find(params[:id])
  end

  # POST /medhistories
  # POST /medhistories.json
  def create
    @medhistory = Medhistory.new(params[:medhistory])

    respond_to do |format|
      if @medhistory.save
        format.html { redirect_to @medhistory, :notice => 'Medhistory was successfully created.' }
        format.json { render :json => @medhistory, :status => :created, :location => @medhistory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @medhistory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /medhistories/1
  # PUT /medhistories/1.json
  def update
    @medhistory = Medhistory.find(params[:id])

    respond_to do |format|
      if @medhistory.update_attributes(params[:medhistory])
        format.html { redirect_to @medhistory, :notice => 'Medhistory was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @medhistory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medhistories/1
  # DELETE /medhistories/1.json
  def destroy
    @medhistory = Medhistory.find(params[:id])
    @medhistory.destroy

    respond_to do |format|
      format.html { redirect_to medhistories_url }
      format.json { head :ok }
    end
  end
end
