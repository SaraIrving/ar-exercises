class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_sell_either_womens_or_mens

  def must_sell_either_womens_or_mens
    if mens_apparel != true && womens_apparel != true
      errors.add(:must_sell_either, "Store must sell at least one of mens or womens apparel")
    end
  end

  

end
