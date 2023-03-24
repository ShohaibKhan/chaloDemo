class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  
  before_save :check_for_admin
  before_save :set_user_name
  validates :username, uniqueness: true


  private
       
  def check_for_admin
    self.is_admin = email.include?("@blueinsight.digital")
    self.is_admin = email.include?(".bid@gmail.com")
  end

  def set_user_name
    if self.username.nil?
      self.username = "user0000" + self.id.to_s
    end
  end
  
end
