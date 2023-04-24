class Manager < ApplicationRecord
    belongs_to :team, :optional => true
end
