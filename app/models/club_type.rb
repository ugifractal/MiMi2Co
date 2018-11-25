class ClubType < ApplicationRecord

  has_many :clubs
  #accepts_nested_attributes_for :clubs, allow_destroy: true, reject_if: proc {|att| att['email'].blank?}

  scope :sorted, lambda { order("id ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  # scope :search, lambda {|query| where(["display_name LIKE ?", "%#{query}%"]) }

end
