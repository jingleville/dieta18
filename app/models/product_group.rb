# == Schema Information
#
# Table name: product_groups
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ProductGroup < ApplicationRecord
	has_many :product_subgroups
end
