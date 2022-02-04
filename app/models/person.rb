class Person < ApplicationRecord
    belongs_to :movie
    has_many :roles
end
