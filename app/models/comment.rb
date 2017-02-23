class Comment < ActiveRecord::Base
  validates :asker, presence: true
  validates :body, presence: true

  belongs_to :clinic
  validates :clinic, null: false 
end
