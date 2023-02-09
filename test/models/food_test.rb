# == Schema Information
#
# Table name: foods
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :bigint           not null
#
# Indexes
#
#  index_foods_on_store_id  (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
require "test_helper"

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
