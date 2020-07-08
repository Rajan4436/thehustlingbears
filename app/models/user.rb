class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable, :omniauthable,
  devise :database_authenticatable, :confirmable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
end
