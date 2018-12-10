# frozen_string_literal: true

class Table < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :number
end
