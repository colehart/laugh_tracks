# Special model
class Special < ActiveRecord::Base
  validates :name, presence: true
  validates :comedian_id, presence: true

  belongs_to :comedian
end
