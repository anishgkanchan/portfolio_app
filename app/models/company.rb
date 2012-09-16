class Company < ActiveRecord::Base
  validate :price_should_be_positive
  def price_should_be_positive
    if price < 0
      errors.add :price,'should be positive'
    end
  end
  validate :symbol_should_be_small
  def symbol_should_be_small
    if symbol.length <3 or symbol.length >4
      errors.add :symbol,'should be three or four lettered'
    end
  end
end
