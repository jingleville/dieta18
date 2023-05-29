# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  option     :string
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer          not null
#
# Indexes
#
#  index_prices_on_product_id  (product_id)
#
# Foreign Keys
#
#  product_id  (product_id => products.id)
#
class Price < ApplicationRecord
  belongs_to :product
end
