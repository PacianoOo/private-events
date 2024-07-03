class User < ApplicationRecord
  has_person_name


    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :created_events, class_name: 'Event', foreign_key: 'created_by'
  has_many :event_users
  has_many :events, through: :event_users

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true


end
