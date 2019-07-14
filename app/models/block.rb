# == Schema Information
#
# Table name: blocks
#
#  id           :bigint           not null, primary key
#  body         :text(65535)
#  class_suffix :string(255)
#  display      :string(255)
#  is_published :boolean
#  order        :integer
#  position     :string(255)
#  show_title   :boolean
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Block < ApplicationRecord
end
