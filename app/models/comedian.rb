# Comedian model
class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
end
