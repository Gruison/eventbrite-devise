class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :created_events, class_name: 'Event', foreign_key: :creator_id, dependent: :destroy
  has_and_belongs_to_many :attended_events, class_name: 'Event'
  # has_many :participations
  # has_many :events, through: :participations
end
