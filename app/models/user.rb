class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email,           presence: true
  validates :first_name,      presence: true, length: { maximum: 50 },
                              on: :update
  validates :last_name,       presence: true, length: { maximum: 50 },
                              on: :update
  validates :envato_username, presence: true,
                              uniqueness: { case_sensitive: false }

  def name
    "#{first_name} #{last_name}"
  end
end
