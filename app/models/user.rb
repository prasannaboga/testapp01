class User < ApplicationRecord

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email

  has_and_belongs_to_many :roles, -> { where(status: :active)}
  has_one_attached :image

  def role_names
    roles.pluck(:name)
  end
end
