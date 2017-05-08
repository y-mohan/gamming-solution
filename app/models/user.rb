class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password , presence: true
	validates :confirm_password , presence: true
	validates :mobile, presence: true, numericality: true
  has_one :image 
  has_and_belongs_to_many :roles
  accepts_nested_attributes_for :image
    before_save :encrypt_password
    before_save :check_name
    before_validation :verify_password
#scope :admin?, -> {true if self.email == "admin@gmail.com"}
  def admin?
     self.roles.pluck(:name).include?("admin")
  end
def check_name
  if name.blank?
    self.name="unknow"
  end
end

    def encrypt_password
       self.password = Digest::MD5.hexdigest(password)
       self.confirm_password = Digest::MD5.hexdigest(confirm_password)
    end
    def verify_password
     	if password != confirm_password
           errors.add(:base, "password & confirm_password are not equal!" )
    	end
    end
	def self.authenticate(email, password)
		if @user = User.where(email: email, password: Digest::MD5.hexdigest(password)).last
           @user
       else
       	nil
       end
	end
end
