class Opportunity < ActiveRecord::Base
  #the following two lines for pagination
  cattr_reader :per_page
  
  attr_accessible :location
  
  @@per_page = 5
  
  def self.search(search, page)
    if search
      paginate :per_page => 5, :page => page,
               :conditions => ['title LIKE ?', "%#{search}%"], :order => 'id'
    else
      paginate :per_page => 5, :page => page
    end
  end
  
end
