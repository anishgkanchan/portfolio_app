class Investment < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :company
  validate :quantity_should_be_positive
  def    worth_at_cost
    return quantity*cost
  end
  def worth_today
    return quantity*company.price
  end
  def quantity_should_be_positive
    if quantity < 0
      errors.add :quantity,'should be positive'
    end
  end
end
