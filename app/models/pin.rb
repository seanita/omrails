class Pin < ActiveRecord::Base
	validates :description, presence: true
	validates :user_id, presence: true
	has_attached_file :image, styles: { medium: "3230x240>" }
	validates_attachment :image, presence: true,
								 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
								 size: { less_than: 5.megabytes }							 

	belongs_to :user

end