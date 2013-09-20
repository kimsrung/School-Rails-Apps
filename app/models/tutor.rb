class Tutor < ActiveRecord::Base
	has_and_belongs_to_many :languages

	TITLE = ["Mr", "Ms", "Dr"]

	DESIGNATORY = ["BEng", "BSc", "BA", "MEng", "MSc", "MA", "MBA"]

	def language_id
		Language.select(:name)
	end

	def skill_id
		Skill.select(:name)
	end


end
