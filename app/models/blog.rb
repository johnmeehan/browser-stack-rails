# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :string
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
end
