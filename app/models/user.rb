class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 30 }
  validates :password, length: { minimum: 8 }

  has_one :company, dependent: :destroy
  
  before_create { generate_token(:token) }
  
  private 
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column]) 
  end
end
