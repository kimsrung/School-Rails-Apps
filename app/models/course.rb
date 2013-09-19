class Course < ActiveRecord::Base
	has_many :objectives, dependent: :destroy
end
