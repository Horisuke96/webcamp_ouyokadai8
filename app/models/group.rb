class Group < ApplicationRecord

  attachment :image

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users, dependent: :destroy
  validates :name, presence: true, uniqueness: true

end
