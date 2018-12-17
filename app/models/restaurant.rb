# frozen_string_literal: true

class Restaurant < ApplicationRecord
  include PgSearch
  pg_search_scope :search, against: :name,
                           using: {
                             tsearch: { prefix: true, dictionary: 'english' }
                           }
  belongs_to :restorer
  has_many :tables
end
