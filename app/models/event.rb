class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :participants, source: :user, through: :registrations


  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500}

  def bargain?
    price < 10
  end

  def self.order_by_price
    order('price asc')
  end

end
