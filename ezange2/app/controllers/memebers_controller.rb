class MemebersController < ApplicationController
  # GET /memebers
  # GET /memebers.json
  def index
    @memebers = Memeber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @memebers }
    end
  end

  # GET /memebers/1
  # GET /memebers/1.json
  def show
    @memeber = Memeber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @memeber }
    end
  end

  # GET /memebers/new
  # GET /memebers/new.json
  def new
    @memeber = Memeber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @memeber }
    end
  end

  # GET /memebers/1/edit
  def edit
    @memeber = Memeber.find(params[:id])
  end

  # POST /memebers
  # POST /memebers.json
  def create
    @memeber = Memeber.new(params[:memeber])

    respond_to do |format|
      if @memeber.save
        format.html { redirect_to @memeber, notice: 'Memeber was successfully created.' }
        format.json { render json: @memeber, status: :created, location: @memeber }
      else
        format.html { render action: "new" }
        format.json { render json: @memeber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /memebers/1
  # PUT /memebers/1.json
  def update
    @memeber = Memeber.find(params[:id])

    respond_to do |format|
      if @memeber.update_attributes(params[:memeber])
        format.html { redirect_to @memeber, notice: 'Memeber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @memeber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memebers/1
  # DELETE /memebers/1.json
  def destroy
    @memeber = Memeber.find(params[:id])
    @memeber.destroy

    respond_to do |format|
      format.html { redirect_to memebers_url }
      format.json { head :no_content }
    end
  end
end
