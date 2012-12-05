class JudgementsController < ApplicationController

  
=begin
  before_filter :authenticate_self, :only => ['edit','destroy']
  def authenticate_self
    if session[:member_id].nil?
      flash[:alert] = 'you need to login before proceed.'
      redirect_to(:controller => 'admin', :action => 'login')
      
    elsif session[:member_id].to_s != params[:member_id]
    
      flash[:alert] = 'you need to be the user him/herself for this action.'
      redirect_to(:controller => 'admin', :action => 'login')
                  
    end
  end

  before_filter :authenticate_self, :only => ['edit', 'destroy']
  def authenticate_self
    member = Member.find_by_id(session[:member_id])
    if session[:member_id].nil?
      flash[:alert] = 'You need to login before proceed.'
      redirect_to(:controller => 'admin', :action => 'login') 
      
      else if member.id != @judgement.member_id
        flash[:alert] = 'You need to be the user him/herself for the action.'
        redirect_to(:controller => 'admin', :action=> 'login')
      end
    end
  end
=end

  # GET /judgements
  # GET /judgements.json
  def index
    @judgements = Judgement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @judgements }
    end
  end

  # GET /judgements/1
  # GET /judgements/1.json
  def show
    @judgement = Judgement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @judgement }
    end
  end

 def destroy
    @sin = Sin.find(params[:sin_id])
    @judgement = @sin.judgements.find(params[:id])
    @judgement.destroy

    respond_to do |format|
      format.html { redirect_to sin_path(@sin) }
      format.json { head :no_content }
    end
  end
  # GET /judgements/new
  # GET /judgements/new.json

  def new
   @judgement = Judgement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @judgement }
    end
  end

  # GET /judgements/1/edit
  def edit
    @judgement = Judgement.find(params[:id])
  end

  # POST /judgements
  # POST /judgements.json
  def create
    @judgement = Judgement.new(params[:judgement])

    respond_to do |format|
      if @judgement.save
        format.html { redirect_to @judgement, notice: 'Judgement was successfully created.' }
        format.json { render json: @judgement, status: :created, location: @judgement }
      else
        format.html { render action: "new" }
        format.json { render json: @judgement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /judgements/1
  # PUT /judgements/1.json
  def update
    @judgement = Judgement.find(params[:id])

    respond_to do |format|
      if @judgement.update_attributes(params[:judgement])
        format.html { redirect_to @judgement, notice: 'Judgement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @judgement.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /judgements/1
  # DELETE /judgements/1.json

  def destroyit
    @judgement = Judgement.find(params[:id])
    @judgement.destroy

    respond_to do |format|
      format.html { redirect_to judgements_url }
      format.json { head :no_content }
    end
  end


end
