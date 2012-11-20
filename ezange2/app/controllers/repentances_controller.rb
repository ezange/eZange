class RepentancesController < ApplicationController
  # GET /repentances
  # GET /repentances.json
  def index
    @repentances = Repentance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @repentances }
    end
  end

  # GET /repentances/1
  # GET /repentances/1.json
  def show
    @repentance = Repentance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @repentance }
    end
  end

  # GET /repentances/new
  # GET /repentances/new.json
  def new
    @repentance = Repentance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @repentance }
    end
  end

  # GET /repentances/1/edit
  def edit
    @repentance = Repentance.find(params[:id])
  end

  # POST /repentances
  # POST /repentances.json
  def create
    @repentance = Repentance.new(params[:repentance])

    respond_to do |format|
      if @repentance.save
        format.html { redirect_to @repentance, notice: 'Repentance was successfully created.' }
        format.json { render json: @repentance, status: :created, location: @repentance }
      else
        format.html { render action: "new" }
        format.json { render json: @repentance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /repentances/1
  # PUT /repentances/1.json
  def update
    @repentance = Repentance.find(params[:id])

    respond_to do |format|
      if @repentance.update_attributes(params[:repentance])
        format.html { redirect_to @repentance, notice: 'Repentance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @repentance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repentances/1
  # DELETE /repentances/1.json
  def destroy
    @repentance = Repentance.find(params[:id])
    @repentance.destroy

    respond_to do |format|
      format.html { redirect_to repentances_url }
      format.json { head :no_content }
    end
  end
end
