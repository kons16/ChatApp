class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_hoby
  has_many :hoby, through: :user_hoby, dependent: :destroy
  has_many :report
  has_many :messages
end
