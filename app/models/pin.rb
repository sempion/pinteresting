class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://upload.wikimedia.org/wikipedia/commons/4/47/Comic_image_missing.png"
	validates_attachment_content_type :image, :content_type => ["image/gif", "image/jpg", "image/jpeg", "image/png"]

validates :image, presence: true
validates :description, presence: true
end
