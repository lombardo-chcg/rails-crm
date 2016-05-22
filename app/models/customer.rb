class Customer < ActiveRecord::Base
  validates :name, :contact_info, { presence: true }
end
