class Cat < ApplicationRecord
        validates :name, :age, :enjoys, presence: true
        validates :enjoys, length: { minimum: 10, 
            too_short: "%{count} characters is the minimum allowed"  }
end

