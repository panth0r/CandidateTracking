require 'test_helper'

class SearchOpportunitiesControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SearchOpportunities.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SearchOpportunities.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to search_opportunities_url(assigns(:search_opportunities))
  end

  def test_show
    get :show, :id => SearchOpportunities.first
    assert_template 'show'
  end
end
