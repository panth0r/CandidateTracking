class ApplikationsController < ApplicationController
  # GET /applikations
  # GET /applikations.xml
  def index
    if can? :manage, Opportunity
      @applikations = Applikation.all
    else
      @applikations = Applikation.find_all_by_user_id(current_user.id)
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @applikations }
    end
  end

  # GET /applikations/1
  # GET /applikations/1.xml
  def show
    @applikation = Applikation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @applikation }
    end
  end

  # GET /applikations/new
  # GET /applikations/new.xml
  def new
    @applikation = Applikation.new
    @opportunity = Opportunity.find(params[:opportunity])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @applikation }
    end
  end

  # GET /applikations/1/edit
  def edit
    @applikation = Applikation.find(params[:id])
  end

  # POST /applikations
  # POST /applikations.xml
  def create
    @applikation = Applikation.new(params[:applikation])
    @applikation.user_id = current_user.id

    respond_to do |format|
      if @applikation.save
        format.html { redirect_to(@applikation, :notice => 'Applikation was successfully created.') }
        format.xml  { render :xml => @applikation, :status => :created, :location => @applikation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @applikation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /applikations/1
  # PUT /applikations/1.xml
  def update
    @applikation = Applikation.find(params[:id])

    respond_to do |format|
      if @applikation.update_attributes(params[:applikation])
        format.html { redirect_to(@applikation, :notice => 'Applikation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @applikation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /applikations/1
  # DELETE /applikations/1.xml
  def destroy
    @applikation = Applikation.find(params[:id])
    @applikation.destroy

    respond_to do |format|
      format.html { redirect_to(applikations_url) }
      format.xml  { head :ok }
    end
  end
end
