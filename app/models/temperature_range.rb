# == Schema Information
#
# Table name: temperature_ranges
#
#  id         :integer          not null, primary key
#  range      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TemperatureRange < ApplicationRecord
  belongs_to :product
end
