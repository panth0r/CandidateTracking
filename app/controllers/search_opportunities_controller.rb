class SearchOpportunitiesController < ApplicationController
  def new
    @search_opportunities = SearchOpportunities.new
  end

  def create
    @search_opportunities = SearchOpportunities.new(params[:search_opportunities])
    if @search_opportunities.save
      redirect_to @search_opportunities, :notice => "Successfully created search opportunities."
    else
      render :action => 'new'
    end
  end

  def show
    @search_opportunities = SearchOpportunities.find(params[:id])
  end
end
