class User < ActiveRecord::Base
  
  before_create :setup_role
    
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :fname, :mname, :lname, :pnum, :address, :referral, :resume_txt,
                  :resume_bin, :cletter, :role
  
  #the following two lines for pagination                
  cattr_reader :per_page
  @@per_page = 5
  
  ROLES = %w[recruiter admin applicant]  
  
#  def roles=(roles)  
#    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum  
#  end  
#  
#  def roles  
#    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }  
#  end  
  
  def role?(base_role)
    #ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
  
  private
    def setup_role
      if self.role.blank?
        self.role = 'applicant'
      end
    end
  
end
