class Installment < ActiveRecord::Base
  belongs_to :account

  validates :account, presence: true, associated: true
end
