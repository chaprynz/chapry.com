class Bookpost < ActiveRecord::Base
    belongs_to :book
  
    validates :title, presence: true, length: { maximum: 50 }
    validates :note, presence: true
    validates :book, presence: true
    validates :tag, presence: true
end
