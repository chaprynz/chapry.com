class Post < ActiveRecord::Base
    belongs_to :category
    
    validates :title, presence: true, length: { maximum: 50 }
    validates :note, presence: true
    validates :tag, presence: true
    validates :category, presence: true
    
  
  
end
