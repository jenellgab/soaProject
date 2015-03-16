class Creature < ActiveRecord::Base
has_many :user_creatures

	creature = Creature.new
	creature.name = "Spammy"
	creature.element_type = "Earth"
	creature.description = "Salty"
	creature.save
end
