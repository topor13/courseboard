class Course < ActiveRecord::Base
  ## Validate
  validates :name, presence: true  
  validates :content, length: { minimum: 6 }

  ## Etc.
  def price_mod
    price + 20 
  end
end
