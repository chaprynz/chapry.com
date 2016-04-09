class Book < ActiveRecord::Base
    
    has_many :bookposts
    validates :name, presence: true, length: { maximum: 100 }
    validates :content, presence: true
    
    
    has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
