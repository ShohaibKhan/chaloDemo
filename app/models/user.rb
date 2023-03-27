class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  
  before_save :check_for_admin,:add_username


  private

  def add_username
    rand=RandomNameGenerator.new
    self.username=rand.compose(4)
  end
       
  def check_for_admin
    self.is_admin = email.include?("@blueinsight.digital")
    self.is_admin = email.include?(".bid@gmail.com")
  end


end
