class Restaurant < ApplicationRecord

  belongs_to :restorer

  validates_presence_of :name

end
