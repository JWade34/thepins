class User < ActiveRecord::Base
  has_many :pins
  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true, :if => :active_or_login?
  validates :password, confirmation: true, :if => :active_or_login?
  # personal step
  validates :first_name, presence: true, :if => :active_or_personal?
  validates :last_name, presence: true, :if => :active_or_personal?
  validates :email, presence: true, :if => :active_or_personal?

  def active?
    status == 'active'
  end

  def active_or_login?
    status.include?('login') || active?
  end

  def active_or_personal?
    status.include?('personal') || active?
  end

end
