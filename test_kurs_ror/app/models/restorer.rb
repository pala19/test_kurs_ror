class Restorer < ApplicationRecord
  devise  :database_authenticatable, :registerable,
          :recoverable, :remeberable, :validatable
  has_many :restaurants

end
