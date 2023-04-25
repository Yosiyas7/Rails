class TeamRecord < ApplicationRecord
    belongs_to :team, :optional => true
end
