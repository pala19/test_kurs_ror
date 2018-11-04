# frozen_string_literal: true

class Restaurant < ApplicationRecord
  belongs_to :restorer
  has_many :tables
end
