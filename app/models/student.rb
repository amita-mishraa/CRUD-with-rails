class Student < ApplicationRecord
    validates :name, presence: true, length: { minimum: 20 }
end
