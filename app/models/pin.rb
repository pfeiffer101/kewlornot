    class Pin < ActiveRecord::Base
       attr_accessor :image_file_name
       belongs_to :user
       has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.jpg"
       validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ # As suggested here https://github.com/thoughtbot/paperclip
       # What I had previously "validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]"    	
    end