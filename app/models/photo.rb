class Photo < ActiveRecord::Base
	belongs_to :place

	has_many :comments, as: :commentable
	accepts_nested_attributes_for :comments

	Paperclip.options[:command_path] = "/usr/local/bin/"

	has_attached_file :avatar, 
		:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
		:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
