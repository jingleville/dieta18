# == Schema Information
#
# Table name: product_subgroups
#
#  id               :integer          not null, primary key
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_group_id :integer          not null
#
# Indexes
#
#  index_product_subgroups_on_product_group_id  (product_group_id)
#
# Foreign Keys
#
#  product_group_id  (product_group_id => product_groups.id)
#
class ProductSubgroup < ApplicationRecord
  belongs_to :product_group
  has_many :products
end
