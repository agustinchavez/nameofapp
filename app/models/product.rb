class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments
  validates :name, presence: true

  #will_paginate global limit
  self.per_page = 5

  def average_rating
    comments.average(:rating).to_f
  end

end
