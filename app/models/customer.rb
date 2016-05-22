class Customer < ActiveRecord::Base
  has_many :followups, dependent: :destroy
  validates :name, :contact_info, { presence: true }
end
