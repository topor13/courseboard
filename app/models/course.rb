class Course < ActiveRecord::Base
  ## Validate
  validates :name, presence: true  
  validates :content, length: { minimum: 6 }
  validates :end_date, :start_date, presence: true
  validate :end_after_start?
  validates :price, presence: true
  validates_numericality_of :price, :greater_than_or_equal_to =>0

  ## Etc.
  def price_mod
    price + 20 
  end

  private
  def end_after_start?
    if end_date < start_date
      errors.add(:end_date, :end_after_start_err) 
    end 
  end
end
