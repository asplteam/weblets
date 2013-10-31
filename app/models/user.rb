class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role ,:sport_id,:state_id,:position_id,:college_id,:role_id,:firstname,:lastname
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: true

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :role_id, presence: true
  validates :sport_id, presence: true
  validates :state_id, presence: true
  validates :position_id, presence: true
  validates :college_id, presence: true

  belongs_to :sport
  belongs_to :state
  belongs_to :position
  belongs_to :college
  belongs_to :role


#  validates_as_enum :role
end
