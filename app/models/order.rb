class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  def total_sales
  end
end