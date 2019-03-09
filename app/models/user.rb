class User < ApplicationRecord

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email

  has_many :meta_fields, dependent: :destroy
  has_and_belongs_to_many :roles, -> { where(status: :active)}
  has_one_attached :image


  accepts_nested_attributes_for :meta_fields, reject_if: :all_blank


  def role_names
    roles.pluck(:name)
  end
end
