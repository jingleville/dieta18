# == Schema Information
#
# Table name: temperature_ranges
#
#  id         :integer          not null, primary key
#  range      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer          not null
#
# Indexes
#
#  index_temperature_ranges_on_product_id  (product_id)
#
# Foreign Keys
#
#  product_id  (product_id => products.id)
#
require "test_helper"

class TemperatureRangeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
