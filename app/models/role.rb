class Role < ApplicationRecord
    has_many :movie
    has_many :person
end
