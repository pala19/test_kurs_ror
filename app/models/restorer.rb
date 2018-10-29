# frozen_string_literal: true

class Restorer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
         :recoverable, :rememberable, :validatable
  has_many :restaurants
end
