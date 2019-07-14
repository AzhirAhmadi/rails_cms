# == Schema Information
#
# Table name: pages
#
#  id           :bigint           not null, primary key
#  body         :text(65535)
#  is_published :boolean
#  menu_display :boolean
#  order        :integer
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  section_id   :integer
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
