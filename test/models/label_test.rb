# == Schema Information
#
# Table name: labels
#
#  id         :bigint           not null, primary key
#  name       :string
#  post_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class LabelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
