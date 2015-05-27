class Account < ActiveRecord::Base
  has_many :installments, inverse_of: :account

  accepts_nested_attributes_for :installments, allow_destroy: true
end
