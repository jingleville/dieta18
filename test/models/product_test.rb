# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  code               :integer
#  name               :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  productsubgroup_id :integer          not null
#
# Indexes
#
#  index_products_on_code                (code) UNIQUE
#  index_products_on_productsubgroup_id  (productsubgroup_id)
#
# Foreign Keys
#
#  productsubgroup_id  (productsubgroup_id => productsubgroups.id)
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end