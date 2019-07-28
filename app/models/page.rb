# == Schema Information
#
# Table name: pages
#
#  id           :bigint           not null, primary key
#  body         :text(65535)
#  featured     :boolean
#  is_published :boolean
#  menu_display :boolean
#  order        :integer
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  section_id   :integer
#

class Page < ApplicationRecord
    belongs_to :section
end
