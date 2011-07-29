require 'test_helper'

class SearchOpportunitiesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SearchOpportunities.new.valid?
  end
end
