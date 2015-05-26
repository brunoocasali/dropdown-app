class Account < ActiveRecord::Base
  has_many :installments
end
