# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  code                :integer
#  name                :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  productsubgroup_id  :integer          not null
#  temperaturerange_id :integer          not null
#
# Indexes
#
#  index_products_on_code                 (code) UNIQUE
#  index_products_on_productsubgroup_id   (productsubgroup_id)
#  index_products_on_temperaturerange_id  (temperaturerange_id)
#
# Foreign Keys
#
#  productsubgroup_id   (productsubgroup_id => productsubgroups.id)
#  temperaturerange_id  (temperaturerange_id => temperatureranges.id)
#
class Product < ApplicationRecord
  belongs_to :productsubgroup
  has_many :prices
  has_one :temperature_range
end
