class Opportunity < ActiveRecord::Base
  #the following two lines for pagination
  cattr_reader :per_page
  
  attr_accessible :location, :title, :responsibilities, :overview, :qualifications
  
  @@per_page = 5
  
  def self.search(search, location, page)
    if search && location
      paginate :per_page => 5, :page => page,
               :conditions => ['title LIKE ? AND location LIKE ?', "%#{search}%", "%#{location}%"], :order => 'id'
    else
      paginate :per_page => 5, :page => page
    end
  end
  
end
