class Account < ActiveRecord::Base
  has_many :installments

  accepts_nested_attributes_for :installments, allow_destroy: true
end
