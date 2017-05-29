
class Bookmark < ApplicationRecord

  belongs_to :user

  validates :user_id,presence: true

  validates :title, length: { minimum: 10 }, presence: true

  validates :url, :format => URI::regexp(%w(http https)), presence: true

end
