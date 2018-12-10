# frozen_string_literal: true

class Table < ApplicationRecord
  belongs_to :restaurant
	has_many :reservations
  validates_presence_of :number
end
