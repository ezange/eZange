class SinsController < ApplicationController
#before_filter :authenticate_login, :only => 'new'
    def authenticate_login
      if session[:member_id].nil?
        flash[:alart] = 'you need to login, before proceed.'
        redirect_to :controller => 'admin', :action => 'login'
      end
    end
 
 
  #before_filter :authenticate_self, :only => ['edit']
  
  def authenticate_self
    member = Member.find_by_id(session[:member_id])
    if session[:member_id].nil?
      flash[:alert] = 'You need to login before proceed.'
      redirect_to(:controller => 'admin', :action => 'login') 
      
      else if session[:member_id].to_s != params[:member_id]
        flash[:alert] = 'You need to be the user him/herself for the action.'
        redirect_to(:controller => 'admin', :action=> 'login')
      end
    end
  end
 
 
  # GET /sins
  # GET /sins.json
  def index
    @sins = Sin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sins }
    end
  end

  # GET /sins/1
  # GET /sins/1.json
  def show
    @sin = Sin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sin }
    end
  end

  # GET /sins/new
  # GET /sins/new.json
  def new
    @sin = Sin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sin }
    end
  end

  # GET /sins/1/edit
  def edit
    @sin = Sin.find(params[:id])
  end

  # POST /sins
  # POST /sins.json
  def create
    @sin = Sin.new(params[:sin])

    respond_to do |format|
      if @sin.save
        format.html { redirect_to @sin, notice: 'Sin was successfully created.' }
        format.json { render json: @sin, status: :created, location: @sin }
      else
        format.html { render action: "new" }
        format.json { render json: @sin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sins/1
  # PUT /sins/1.json
  def update
    @sin = Sin.find(params[:id])

    respond_to do |format|
      if @sin.update_attributes(params[:sin])
        format.html { redirect_to @sin, notice: 'Sin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sins/1
  # DELETE /sins/1.json
  def destroy
    @sin = Sin.find(params[:id])
    @sin.destroy

    respond_to do |format|
      format.html { redirect_to sins_url }
      format.json { head :no_content }
    end
  end
end
