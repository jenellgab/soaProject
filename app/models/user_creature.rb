class UserCreature < ActiveRecord::Base
belongs_to :user
has_many :creature
end
