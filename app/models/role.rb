class Role < ApplicationRecord
  enum status: [ :active, :inactive ]


  validates_presence_of :name
  validates_uniqueness_of :name

  has_and_belongs_to_many :users
end