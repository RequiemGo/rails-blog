# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title_es   :string
#  title_en   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  has_rich_text :body_es
  has_rich_text :body_en
  has_many :labels

  validates :title_es, :title_en ,presence: true, length: { minimum: 5, maximum: 50 }
  validates :body_es, :body_en, presence: true, length: { minimum: 5, maximum: 1200 }
end
