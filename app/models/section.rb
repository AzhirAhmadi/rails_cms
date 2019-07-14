# == Schema Information
#
# Table name: sections
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Section < ApplicationRecord
    has_many :pages
end
