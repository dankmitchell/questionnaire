class Form < ActiveRecord::Base
  attr_accessible :email, :name, :company, :job_title, :comment, :rating, :would_recommend

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true

  validates :rating, presence: true, numericality: {
  	greater_than_or_equal_to: 1, 
  	less_than_or_equal_to: 5,
  	only_interger: true
  }

end
